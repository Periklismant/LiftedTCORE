(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   green_block_1 brown_block_1 blue_block_1 orange_block_1 blue_block_2 black_block_1 black_block_2 black_block_3 purple_block_1 yellow_block_1 - block
 )
 (:init (ontable green_block_1) (on brown_block_1 green_block_1) (ontable blue_block_1) (on orange_block_1 brown_block_1) (on blue_block_2 blue_block_1) (on black_block_1 blue_block_2) (ontable black_block_2) (on black_block_3 black_block_2) (on purple_block_1 black_block_1) (on yellow_block_1 orange_block_1) (clear black_block_3) (clear purple_block_1) (clear yellow_block_1) (handempty))
 (:goal (and (on brown_block_1 black_block_1)))
 (:constraints (sometime (or (holding black_block_3) (not (ontable black_block_2)))) (sometime (or (clear black_block_2) (holding green_block_1))))
)
