(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   blue_block_1 brown_block_1 white_block_1 yellow_block_1 orange_block_1 orange_block_2 orange_block_3 - block
 )
 (:init (ontable blue_block_1) (on brown_block_1 blue_block_1) (on white_block_1 brown_block_1) (on yellow_block_1 white_block_1) (on orange_block_1 yellow_block_1) (on orange_block_2 orange_block_1) (ontable orange_block_3) (clear orange_block_2) (clear orange_block_3) (handempty))
 (:goal (and (on brown_block_1 orange_block_1)))
 (:constraints (always (not (ontable orange_block_2))) (sometime (not (on orange_block_1 yellow_block_1))) (sometime-before (not (on orange_block_1 yellow_block_1)) (or (not (ontable orange_block_3)) (clear white_block_1))))
)
