(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   grey_block_1 purple_block_1 red_block_1 blue_block_2 grey_block_2 brown_block_1 red_block_2 white_block_2 red_block_3 - block
 )
 (:init (ontable grey_block_1) (on green_block_1 grey_block_1) (on purple_block_1 green_block_1) (ontable red_block_1) (ontable blue_block_1) (ontable white_block_1) (on blue_block_2 white_block_1) (on grey_block_2 blue_block_1) (ontable brown_block_1) (on red_block_2 grey_block_2) (ontable white_block_2) (on yellow_block_1 purple_block_1) (on red_block_3 white_block_2) (clear red_block_1) (clear blue_block_2) (clear brown_block_1) (clear red_block_2) (clear yellow_block_1) (clear red_block_3) (handempty))
 (:goal (and (on grey_block_1 red_block_2) (hold_0)))
)
