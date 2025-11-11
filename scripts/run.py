import os
import time
import subprocess
import psutil
import signal
import tracemalloc
from sys import argv

from unified_planning.shortcuts import *
from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.io.pddl_writer import PDDLWriter
from unified_planning.model.metrics import MinimizeSequentialPlanLength
from unified_planning.model.walkers.any import AnyChecker
from source.lifted_tcore import LiftedTCORE

get_environment().credits_stream = None

def compile(domain_file, problem_file, problem_no, output_path, log_file):

    reader = PDDLReader() 
    problem = reader.parse_problem(domain_file, problem_file)

    compiler = LiftedTCORE()
    start_time = time.time()
    tracemalloc.start()

    lifted_regression_problem = compiler.compile(
        problem, CompilationKind.TRAJECTORY_CONSTRAINTS_REMOVING
    )

    _, peak = tracemalloc.get_traced_memory()
    peak = peak / (1024 * 1024)  # MB
    tracemalloc.stop()
    compilation_time = time.time() - start_time
    print(f"Problem Instance: {problem_no}")
    print(f"\tCompilation time: {compilation_time} sec")
    print(f"\tPeak memory: {peak} MB")
    print()
    writer_ltcr = PDDLWriter(lifted_regression_problem, needs_requirements=False)
    writer_ltcr.write_domain(os.path.join(output_path, "domain.pddl"))
    writer_ltcr.write_problem(os.path.join(output_path, "problem.pddl"))
    with open(log_file, "a") as fw:
        fw.write(f"{problem_no} {compilation_time} {peak}\n")
    return 

if __name__ == "__main__":
    domain = argv[1]
    problem_min = argv[2]
    problem_max = argv[3]
    log_file = (
        f"data/{domain}/logs/logs_{problem_min}_{problem_max}.log"
    )
    os.makedirs(f"data/{domain}/logs", exist_ok=True)
    with open(log_file, "w") as fw:
        fw.write(f"Instance Compilation-Time(sec) Peak-Memory(MB)\n")
    
    domain_file = f"data/{domain}/domain.pddl"
    print(f"Domain: {domain}\n")
    problem_path = f"data/{domain}/instances/"
    compiled_path = f"data/{domain}/compiled_instances/"
    os.makedirs(compiled_path, exist_ok=True)

    for problem_no in range(int(problem_min), int(problem_max) + 1):
        problem_file = f"{problem_path}/p{problem_no}.pddl"
        output_path = f"{compiled_path}/{problem_no}"
        os.makedirs(output_path, exist_ok=True)
        compile(domain_file, problem_file, problem_no, output_path, log_file)

