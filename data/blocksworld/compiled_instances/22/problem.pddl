(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   red_block_1 blue_block_1 green_block_1 orange_block_1 orange_block_2 brown_block_1 yellow_block_1 brown_block_2 red_block_2 brown_block_3 green_block_2 - block
 )
 (:init (ontable red_block_1) (on blue_block_1 red_block_1) (on blue_block_2 blue_block_1) (on grey_block_1 blue_block_2) (on green_block_1 grey_block_1) (ontable orange_block_1) (ontable orange_block_2) (on brown_block_1 orange_block_1) (on yellow_block_1 brown_block_1) (on brown_block_2 orange_block_2) (on red_block_2 brown_block_2) (on brown_block_3 red_block_2) (on green_block_2 green_block_1) (clear yellow_block_1) (clear brown_block_3) (clear green_block_2) (handempty))
 (:goal (and (on blue_block_2 grey_block_1) (hold_0)))
)
