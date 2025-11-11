(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   yellow_block_1 orange_block_1 blue_block_1 purple_block_1 black_block_1 green_block_1 blue_block_2 blue_block_3 red_block_1 purple_block_2 white_block_1 orange_block_2 red_block_2 - block
 )
 (:init (ontable yellow_block_1) (on orange_block_1 yellow_block_1) (on blue_block_1 orange_block_1) (ontable purple_block_1) (ontable black_block_1) (on green_block_1 purple_block_1) (on blue_block_2 blue_block_1) (ontable blue_block_3) (on red_block_1 green_block_1) (on purple_block_2 blue_block_2) (on white_block_1 black_block_1) (on orange_block_2 blue_block_3) (on red_block_2 purple_block_2) (clear red_block_1) (clear white_block_1) (clear orange_block_2) (clear red_block_2) (handempty))
 (:goal (and (clear purple_block_2)))
 (:constraints (sometime (clear orange_block_1)) (sometime (not (clear orange_block_1))) (sometime-after (not (clear orange_block_1)) (or (not (ontable purple_block_1)) (not (ontable black_block_1)))))
)
