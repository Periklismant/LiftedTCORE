(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   blue_block_1 brown_block_1 - block
 )
 (:init (ontable blue_block_1) (on brown_block_1 blue_block_1) (on white_block_1 brown_block_1) (on yellow_block_1 white_block_1) (on orange_block_1 yellow_block_1) (on orange_block_2 orange_block_1) (ontable orange_block_3) (clear orange_block_2) (clear orange_block_3) (handempty))
 (:goal (and (on brown_block_1 orange_block_1) (hold_0)))
)
