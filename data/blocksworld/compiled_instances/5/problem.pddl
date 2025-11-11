(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   green_block_1 purple_block_1 red_block_1 blue_block_2 - block
 )
 (:init (ontable grey_block_1) (ontable green_block_1) (on purple_block_1 green_block_1) (ontable red_block_1) (ontable blue_block_1) (ontable white_block_1) (on blue_block_2 red_block_1) (clear grey_block_1) (clear purple_block_1) (clear blue_block_1) (clear white_block_1) (clear blue_block_2) (handempty))
 (:goal (and (holding grey_block_1) (hold_0) (hold_2)))
)
