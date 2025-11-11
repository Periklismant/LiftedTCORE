(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   brown_block_1 blue_block_1 black_block_1 orange_block_1 red_block_1 red_block_2 green_block_1 - block
 )
 (:init (ontable brown_block_1) (on blue_block_1 brown_block_1) (on black_block_1 blue_block_1) (ontable orange_block_1) (on red_block_1 black_block_1) (on red_block_2 orange_block_1) (ontable green_block_1) (clear red_block_1) (clear red_block_2) (clear green_block_1) (handempty))
 (:goal (and (holding red_block_1)))
 (:constraints (sometime (not (on green_block_1 brown_block_1))) (sometime-after (not (on green_block_1 brown_block_1)) (or (on black_block_1 green_block_1) (holding red_block_2))) (sometime (on brown_block_1 green_block_1)))
)
