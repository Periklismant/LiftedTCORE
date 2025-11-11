(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   black_block_1 brown_block_1 grey_block_1 orange_block_1 green_block_1 green_block_2 red_block_1 - block
 )
 (:init (ontable black_block_1) (on brown_block_1 black_block_1) (ontable grey_block_1) (on orange_block_1 brown_block_1) (on green_block_1 orange_block_1) (on green_block_2 green_block_1) (on red_block_1 green_block_2) (clear grey_block_1) (clear red_block_1) (handempty))
 (:goal (and (clear green_block_2)))
 (:constraints (sometime (not (ontable brown_block_1))) (sometime-after (not (ontable brown_block_1)) (on grey_block_1 black_block_1)) (sometime (not (ontable red_block_1))) (sometime-after (not (ontable red_block_1)) (ontable green_block_1)))
)
