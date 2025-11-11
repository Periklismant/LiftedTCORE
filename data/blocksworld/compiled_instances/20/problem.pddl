(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   red_block_1 white_block_1 red_block_2 green_block_1 red_block_3 red_block_4 green_block_2 grey_block_1 - block
 )
 (:init (ontable yellow_block_1) (ontable red_block_1) (on white_block_1 yellow_block_1) (on red_block_2 red_block_1) (on green_block_1 red_block_2) (on yellow_block_2 white_block_1) (on red_block_3 green_block_1) (on red_block_4 yellow_block_2) (on green_block_2 red_block_3) (on grey_block_1 red_block_4) (clear green_block_2) (clear grey_block_1) (handempty))
 (:goal (and (ontable red_block_2) (hold_0) (hold_1)))
)
