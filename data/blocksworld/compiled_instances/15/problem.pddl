(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   grey_block_1 green_block_1 red_block_1 brown_block_1 red_block_2 - block
 )
 (:init (ontable grey_block_1) (ontable green_block_1) (ontable purple_block_1) (on red_block_1 purple_block_1) (on blue_block_1 red_block_1) (ontable white_block_1) (on blue_block_2 grey_block_1) (ontable grey_block_2) (on brown_block_1 blue_block_2) (on red_block_2 white_block_1) (clear green_block_1) (clear blue_block_1) (clear grey_block_2) (clear brown_block_1) (clear red_block_2) (handempty))
 (:goal (and (clear red_block_1) (hold_0) (hold_2)))
)
