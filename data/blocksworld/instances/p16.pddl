(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   yellow_block_1 grey_block_1 purple_block_1 green_block_1 yellow_block_2 red_block_1 blue_block_1 green_block_2 yellow_block_3 white_block_1 - block
 )
 (:init (ontable yellow_block_1) (on grey_block_1 yellow_block_1) (ontable purple_block_1) (on green_block_1 grey_block_1) (on yellow_block_2 purple_block_1) (on red_block_1 green_block_1) (on blue_block_1 yellow_block_2) (on green_block_2 red_block_1) (on yellow_block_3 green_block_2) (ontable white_block_1) (clear blue_block_1) (clear yellow_block_3) (clear white_block_1) (handempty))
 (:goal (and (holding grey_block_1)))
 (:constraints (sometime (and (clear purple_block_1) (not (clear blue_block_1)))) (always (not (ontable green_block_2))))
)
