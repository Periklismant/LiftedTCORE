# LiftedTCORE: a Lifted Constraint Compiler for Planning in PDDL3

LiftedTCORE is a variant of the [TCORE](https://github.com/LBonassi95/tcore) compiler that compiles away the constraints of a PDDL3 planning problem, allowing the use of modern planners. 

As opposed to TCORE, LiftedTCORE operates without grounding the action operators in the domain file (aka: lifted compilation), which has several advantages. For example:
   - it leads to much more succinct specifications that easier to understand and debug.
   - it allows the use of lifted planners.

LiftedTCORE:
   - receive as input a domain and a problem file with always, sometime, at-most-once, sometime-before, sometime-after constraints (see [PDDL3.0](https://planning.wiki/ref/pddl3)).
   - produce as output a domain and a problem file without constraints, specifying an equivalent planning problem instance to the input one.

## Repository Structure

- `source/`: the source code of LiftedTCORE.
- `data/`: PDDL domains and problem instances with constraints.
- `scripts/`: contains a script for running LiftedTCORE on a specific domain and a range of problem instances.

## Installation

This software requires:
- unified-planning version 1.1.0

## Example Executions

```
python3 -m scripts.run sokoban 1 20
python3 -m scripts.run blocksworld 1 30

```
