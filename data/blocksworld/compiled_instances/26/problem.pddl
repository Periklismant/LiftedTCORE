(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   brown_block_1 green_block_1 brown_block_2 grey_block_1 red_block_3 - block
 )
 (:init (ontable brown_block_1) (ontable blue_block_1) (on black_block_1 blue_block_1) (on orange_block_1 brown_block_1) (on red_block_1 orange_block_1) (on red_block_2 red_block_1) (on green_block_1 red_block_2) (ontable brown_block_2) (on black_block_2 black_block_1) (on grey_block_1 brown_block_2) (ontable grey_block_2) (on red_block_3 grey_block_1) (on orange_block_2 black_block_2) (clear green_block_1) (clear grey_block_2) (clear red_block_3) (clear orange_block_2) (handempty) (hold_0) (hold_2))
 (:goal (and (clear red_block_2) (hold_0) (hold_1) (hold_2) (hold_3)))
)
