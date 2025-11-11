(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   yellow_block_1 purple_block_1 green_block_1 yellow_block_2 - block
 )
 (:init (ontable yellow_block_1) (ontable grey_block_1) (on purple_block_1 grey_block_1) (ontable green_block_1) (on yellow_block_2 green_block_1) (ontable red_block_1) (on blue_block_1 yellow_block_2) (clear yellow_block_1) (clear purple_block_1) (clear red_block_1) (clear blue_block_1) (handempty))
 (:goal (and (holding green_block_1) (hold_0)))
)
