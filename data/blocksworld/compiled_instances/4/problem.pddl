(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   blue_block_1 orange_block_1 red_block_1 - block
 )
 (:init (ontable brown_block_1) (on blue_block_1 brown_block_1) (on black_block_1 blue_block_1) (ontable orange_block_1) (on red_block_1 black_block_1) (on red_block_2 orange_block_1) (ontable green_block_1) (clear red_block_1) (clear red_block_2) (clear green_block_1) (handempty) (hold_0))
 (:goal (and (holding red_block_1) (hold_0) (hold_1) (hold_2)))
)
