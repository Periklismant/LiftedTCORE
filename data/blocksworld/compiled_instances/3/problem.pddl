(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   yellow_block_1 blue_block_1 purple_block_1 black_block_1 green_block_1 - block
 )
 (:init (ontable yellow_block_1) (ontable orange_block_1) (on blue_block_1 yellow_block_1) (on purple_block_1 blue_block_1) (on black_block_1 orange_block_1) (ontable green_block_1) (on blue_block_2 purple_block_1) (clear black_block_1) (clear green_block_1) (clear blue_block_2) (handempty))
 (:goal (and (on black_block_1 blue_block_1) (hold_0)))
)
