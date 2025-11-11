(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   black_block_1 white_block_1 black_block_2 black_block_3 white_block_2 brown_block_1 yellow_block_1 green_block_1 white_block_3 black_block_4 - block
 )
 (:init (ontable black_block_1) (ontable white_block_1) (on black_block_2 black_block_1) (on black_block_3 white_block_1) (ontable white_block_2) (ontable brown_block_1) (on yellow_block_1 brown_block_1) (ontable green_block_1) (on white_block_3 yellow_block_1) (on black_block_4 white_block_2) (clear black_block_2) (clear black_block_3) (clear green_block_1) (clear white_block_3) (clear black_block_4) (handempty))
 (:goal (and (holding black_block_4)))
 (:constraints (sometime (not (clear black_block_4))) (sometime-before (not (clear black_block_4)) (or (on brown_block_1 black_block_2) (on black_block_4 black_block_2))) (sometime (clear yellow_block_1)))
)
