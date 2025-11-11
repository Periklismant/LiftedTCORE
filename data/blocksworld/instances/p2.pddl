(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   yellow_block_1 brown_block_1 white_block_1 green_block_1 grey_block_1 brown_block_2 black_block_1 - block
 )
 (:init (ontable yellow_block_1) (ontable brown_block_1) (on white_block_1 yellow_block_1) (on green_block_1 brown_block_1) (on grey_block_1 green_block_1) (ontable brown_block_2) (on black_block_1 white_block_1) (clear grey_block_1) (clear brown_block_2) (clear black_block_1) (handempty))
 (:goal (and (holding grey_block_1)))
 (:constraints (sometime (or (on white_block_1 grey_block_1) (on yellow_block_1 white_block_1))) (sometime (and (not (ontable brown_block_2)) (holding brown_block_1))))
)
