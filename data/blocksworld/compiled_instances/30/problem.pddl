(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   black_block_1 white_block_1 black_block_2 white_block_2 yellow_block_1 green_block_1 black_block_4 brown_block_2 green_block_2 - block
 )
 (:init (ontable black_block_1) (on white_block_1 black_block_1) (ontable black_block_2) (ontable black_block_3) (ontable white_block_2) (on brown_block_1 white_block_2) (on yellow_block_1 black_block_3) (on green_block_1 brown_block_1) (on white_block_3 green_block_1) (on black_block_4 white_block_1) (on brown_block_2 black_block_4) (ontable green_block_2) (on blue_block_1 brown_block_2) (clear black_block_2) (clear yellow_block_1) (clear white_block_3) (clear green_block_2) (clear blue_block_1) (handempty))
 (:goal (and (clear black_block_1) (hold_0) (hold_2)))
)
