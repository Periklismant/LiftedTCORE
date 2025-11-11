(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   green_block_1 brown_block_1 blue_block_2 - block
 )
 (:init (ontable green_block_1) (on brown_block_1 green_block_1) (ontable blue_block_1) (ontable orange_block_1) (on blue_block_2 orange_block_1) (ontable black_block_1) (on black_block_2 blue_block_2) (clear brown_block_1) (clear blue_block_1) (clear black_block_1) (clear black_block_2) (handempty))
 (:goal (and (holding blue_block_2) (hold_0) (hold_1)))
)
