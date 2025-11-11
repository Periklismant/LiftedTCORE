(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   brown_block_1 brown_block_2 - block
 )
 (:init (ontable brown_block_1) (on red_block_1 brown_block_1) (on purple_block_1 red_block_1) (ontable black_block_1) (ontable brown_block_2) (on red_block_2 brown_block_2) (on yellow_block_1 black_block_1) (clear purple_block_1) (clear red_block_2) (clear yellow_block_1) (handempty) (hold_0) (hold_2))
 (:goal (and (clear red_block_1) (hold_0) (hold_1) (hold_2) (hold_3)))
)
