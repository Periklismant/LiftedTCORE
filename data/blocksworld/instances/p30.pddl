(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   black_block_1 white_block_1 black_block_2 black_block_3 white_block_2 brown_block_1 yellow_block_1 green_block_1 white_block_3 black_block_4 brown_block_2 green_block_2 blue_block_1 - block
 )
 (:init (ontable black_block_1) (on white_block_1 black_block_1) (ontable black_block_2) (ontable black_block_3) (ontable white_block_2) (on brown_block_1 white_block_2) (on yellow_block_1 black_block_3) (on green_block_1 brown_block_1) (on white_block_3 green_block_1) (on black_block_4 white_block_1) (on brown_block_2 black_block_4) (ontable green_block_2) (on blue_block_1 brown_block_2) (clear black_block_2) (clear yellow_block_1) (clear white_block_3) (clear green_block_2) (clear blue_block_1) (handempty))
 (:goal (and (clear black_block_1)))
 (:constraints (sometime (ontable blue_block_1)) (sometime-before (ontable blue_block_1) (not (clear white_block_3))) (sometime (or (on blue_block_1 brown_block_1) (clear black_block_3))))
)
