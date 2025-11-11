(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   yellow_block_1 red_block_1 yellow_block_3 white_block_1 purple_block_2 red_block_2 - block
 )
 (:init (ontable yellow_block_1) (on grey_block_1 yellow_block_1) (on purple_block_1 grey_block_1) (on green_block_1 purple_block_1) (on yellow_block_2 green_block_1) (ontable red_block_1) (on blue_block_1 yellow_block_2) (ontable green_block_2) (on yellow_block_3 green_block_2) (on white_block_1 red_block_1) (ontable yellow_block_4) (on purple_block_2 yellow_block_3) (on red_block_2 purple_block_2) (clear blue_block_1) (clear white_block_1) (clear yellow_block_4) (clear red_block_2) (handempty))
 (:goal (and (holding green_block_2) (hold_0) (hold_1)))
)
