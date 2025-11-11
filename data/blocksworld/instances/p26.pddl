(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   brown_block_1 blue_block_1 black_block_1 orange_block_1 red_block_1 red_block_2 green_block_1 brown_block_2 black_block_2 grey_block_1 grey_block_2 red_block_3 orange_block_2 - block
 )
 (:init (ontable brown_block_1) (ontable blue_block_1) (on black_block_1 blue_block_1) (on orange_block_1 brown_block_1) (on red_block_1 orange_block_1) (on red_block_2 red_block_1) (on green_block_1 red_block_2) (ontable brown_block_2) (on black_block_2 black_block_1) (on grey_block_1 brown_block_2) (ontable grey_block_2) (on red_block_3 grey_block_1) (on orange_block_2 black_block_2) (clear green_block_1) (clear grey_block_2) (clear red_block_3) (clear orange_block_2) (handempty))
 (:goal (and (clear red_block_2)))
 (:constraints (sometime (not (on blue_block_1 black_block_2))) (sometime-after (not (on blue_block_1 black_block_2)) (or (on black_block_2 grey_block_2) (on black_block_1 red_block_2))) (sometime (not (ontable orange_block_2))) (sometime-after (not (ontable orange_block_2)) (or (holding orange_block_1) (holding red_block_1))))
)
