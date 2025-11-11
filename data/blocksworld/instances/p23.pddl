(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   yellow_block_1 brown_block_1 white_block_1 green_block_1 grey_block_1 brown_block_2 black_block_1 brown_block_3 blue_block_1 brown_block_4 red_block_1 black_block_2 orange_block_1 - block
 )
 (:init (ontable yellow_block_1) (ontable brown_block_1) (on white_block_1 brown_block_1) (on green_block_1 yellow_block_1) (on grey_block_1 green_block_1) (on brown_block_2 grey_block_1) (on black_block_1 white_block_1) (on brown_block_3 brown_block_2) (on blue_block_1 brown_block_3) (ontable brown_block_4) (on red_block_1 black_block_1) (on black_block_2 blue_block_1) (on orange_block_1 black_block_2) (clear brown_block_4) (clear red_block_1) (clear orange_block_1) (handempty))
 (:goal (and (clear white_block_1)))
 (:constraints (sometime (or (on grey_block_1 brown_block_4) (clear brown_block_3))) (sometime (not (on black_block_2 orange_block_1))) (sometime-after (not (on black_block_2 orange_block_1)) (or (not (clear red_block_1)) (holding brown_block_4))))
)
