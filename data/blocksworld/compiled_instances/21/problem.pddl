(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   brown_block_1 blue_block_1 orange_block_1 blue_block_2 black_block_1 purple_block_1 yellow_block_1 black_block_4 red_block_1 - block
 )
 (:init (ontable green_block_1) (on brown_block_1 green_block_1) (ontable blue_block_1) (on orange_block_1 blue_block_1) (on blue_block_2 brown_block_1) (on black_block_1 orange_block_1) (on black_block_2 black_block_1) (ontable black_block_3) (ontable purple_block_1) (on yellow_block_1 black_block_2) (ontable blue_block_3) (ontable black_block_4) (ontable red_block_1) (clear blue_block_2) (clear black_block_3) (clear purple_block_1) (clear yellow_block_1) (clear blue_block_3) (clear black_block_4) (clear red_block_1) (handempty))
 (:goal (and (on green_block_1 black_block_2) (hold_0) (hold_1)))
)
