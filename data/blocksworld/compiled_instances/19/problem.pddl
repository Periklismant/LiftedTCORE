(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   orange_block_2 green_block_1 yellow_block_1 blue_block_1 white_block_1 - block
 )
 (:init (ontable orange_block_1) (on orange_block_2 orange_block_1) (ontable green_block_1) (on yellow_block_1 orange_block_2) (ontable green_block_2) (ontable yellow_block_2) (on green_block_3 yellow_block_1) (on green_block_4 green_block_1) (ontable blue_block_1) (on white_block_1 yellow_block_2) (clear green_block_2) (clear green_block_3) (clear green_block_4) (clear blue_block_1) (clear white_block_1) (handempty) (hold_0))
 (:goal (and (holding green_block_3) (hold_0) (hold_1) (hold_2)))
)
