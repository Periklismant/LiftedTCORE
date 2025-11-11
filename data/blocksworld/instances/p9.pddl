(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   orange_block_1 orange_block_2 green_block_1 yellow_block_1 green_block_2 yellow_block_2 green_block_3 - block
 )
 (:init (ontable orange_block_1) (ontable orange_block_2) (on green_block_1 orange_block_2) (ontable yellow_block_1) (on green_block_2 green_block_1) (ontable yellow_block_2) (on green_block_3 green_block_2) (clear orange_block_1) (clear yellow_block_1) (clear yellow_block_2) (clear green_block_3) (handempty))
 (:goal (and (ontable green_block_3)))
 (:constraints (sometime (holding green_block_3)) (sometime-before (holding green_block_3) (or (ontable green_block_2) (not (clear yellow_block_2)))) (sometime (not (on orange_block_2 yellow_block_2))) (sometime-after (not (on orange_block_2 yellow_block_2)) (or (not (clear green_block_3)) (clear orange_block_2))))
)
