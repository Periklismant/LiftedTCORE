(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   orange_block_1 green_block_1 yellow_block_1 - block
 )
 (:init (ontable orange_block_1) (ontable orange_block_2) (on green_block_1 orange_block_2) (ontable yellow_block_1) (on green_block_2 green_block_1) (ontable yellow_block_2) (on green_block_3 green_block_2) (clear orange_block_1) (clear yellow_block_1) (clear yellow_block_2) (clear green_block_3) (handempty) (hold_2))
 (:goal (and (ontable green_block_3) (hold_0) (hold_2) (hold_3)))
)
