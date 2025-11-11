(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   green_block_1 brown_block_1 blue_block_1 orange_block_1 blue_block_2 black_block_1 black_block_2 - block
 )
 (:init (ontable green_block_1) (on brown_block_1 green_block_1) (ontable blue_block_1) (ontable orange_block_1) (on blue_block_2 orange_block_1) (ontable black_block_1) (on black_block_2 blue_block_2) (clear brown_block_1) (clear blue_block_1) (clear black_block_1) (clear black_block_2) (handempty))
 (:goal (and (holding blue_block_2)))
 (:constraints (sometime (or (holding orange_block_1) (not (ontable black_block_1)))) (sometime (holding black_block_2)) (sometime-before (holding black_block_2) (not (ontable blue_block_1))))
)
