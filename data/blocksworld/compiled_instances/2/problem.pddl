(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   green_block_1 black_block_1 - block
 )
 (:init (ontable yellow_block_1) (ontable brown_block_1) (on white_block_1 yellow_block_1) (on green_block_1 brown_block_1) (on grey_block_1 green_block_1) (ontable brown_block_2) (on black_block_1 white_block_1) (clear grey_block_1) (clear brown_block_2) (clear black_block_1) (handempty))
 (:goal (and (holding grey_block_1) (hold_0) (hold_1)))
)
