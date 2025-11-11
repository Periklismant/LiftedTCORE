(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   brown_block_1 blue_block_1 black_block_1 orange_block_1 red_block_1 red_block_2 green_block_1 brown_block_2 black_block_2 grey_block_1 - block
 )
 (:init (ontable brown_block_1) (ontable blue_block_1) (on black_block_1 brown_block_1) (on orange_block_1 blue_block_1) (ontable red_block_1) (on red_block_2 red_block_1) (ontable green_block_1) (on brown_block_2 black_block_1) (on black_block_2 brown_block_2) (on grey_block_1 black_block_2) (clear orange_block_1) (clear red_block_2) (clear green_block_1) (clear grey_block_1) (handempty))
 (:goal (and (on blue_block_1 green_block_1)))
 (:constraints (sometime (not (ontable red_block_2))) (sometime-after (not (ontable red_block_2)) (or (ontable brown_block_2) (holding orange_block_1))) (sometime (not (ontable blue_block_1))) (sometime-before (not (ontable blue_block_1)) (holding red_block_1)))
)
