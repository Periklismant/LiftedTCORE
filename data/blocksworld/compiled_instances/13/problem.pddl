(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   orange_block_1 red_block_1 black_block_1 red_block_2 green_block_1 blue_block_1 - block
 )
 (:init (ontable brown_block_1) (on orange_block_1 brown_block_1) (ontable grey_block_1) (on white_block_1 orange_block_1) (on red_block_1 white_block_1) (ontable black_block_1) (on yellow_block_1 grey_block_1) (ontable red_block_2) (on green_block_1 red_block_1) (on blue_block_1 red_block_2) (clear black_block_1) (clear yellow_block_1) (clear green_block_1) (clear blue_block_1) (handempty) (hold_0))
 (:goal (and (ontable yellow_block_1) (hold_0) (hold_1) (hold_2)))
)
