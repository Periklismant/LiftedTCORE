(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   orange_block_1 green_block_2 - block
 )
 (:init (ontable black_block_1) (on brown_block_1 black_block_1) (ontable grey_block_1) (on orange_block_1 brown_block_1) (on green_block_1 orange_block_1) (on green_block_2 green_block_1) (on red_block_1 green_block_2) (clear grey_block_1) (clear red_block_1) (handempty) (hold_0) (hold_2))
 (:goal (and (clear green_block_2) (hold_0) (hold_1) (hold_2) (hold_3)))
)
