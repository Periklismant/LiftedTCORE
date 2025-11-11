(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   brown_block_1 orange_block_1 grey_block_1 red_block_1 yellow_block_1 green_block_1 blue_block_1 black_block_2 - block
 )
 (:init (ontable brown_block_1) (ontable orange_block_1) (on grey_block_1 orange_block_1) (ontable white_block_1) (ontable red_block_1) (on black_block_1 brown_block_1) (on yellow_block_1 red_block_1) (on red_block_2 white_block_1) (on green_block_1 grey_block_1) (on blue_block_1 red_block_2) (on grey_block_2 black_block_1) (ontable black_block_2) (on yellow_block_2 yellow_block_1) (clear green_block_1) (clear blue_block_1) (clear grey_block_2) (clear black_block_2) (clear yellow_block_2) (handempty) (hold_0))
 (:goal (and (ontable grey_block_1) (hold_0) (hold_1) (hold_2)))
)
