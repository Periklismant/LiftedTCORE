(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   black_block_1 brown_block_1 grey_block_1 orange_block_1 green_block_1 green_block_2 red_block_1 grey_block_2 white_block_1 black_block_2 - block
 )
 (:init (ontable black_block_1) (on brown_block_1 black_block_1) (ontable grey_block_1) (on orange_block_1 grey_block_1) (on green_block_1 brown_block_1) (ontable green_block_2) (on red_block_1 green_block_2) (on grey_block_2 red_block_1) (on white_block_1 orange_block_1) (on black_block_2 green_block_1) (clear grey_block_2) (clear white_block_1) (clear black_block_2) (handempty))
 (:goal (and (clear grey_block_1)))
 (:constraints (sometime (ontable white_block_1)) (sometime-before (ontable white_block_1) (or (clear green_block_2) (on white_block_1 grey_block_2))) (sometime (not (on white_block_1 grey_block_1))) (sometime-after (not (on white_block_1 grey_block_1)) (or (clear green_block_1) (holding black_block_1))))
)
