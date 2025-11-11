(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   brown_block_1 red_block_1 purple_block_1 black_block_1 brown_block_2 red_block_2 yellow_block_1 - block
 )
 (:init (ontable brown_block_1) (on red_block_1 brown_block_1) (on purple_block_1 red_block_1) (ontable black_block_1) (ontable brown_block_2) (on red_block_2 brown_block_2) (on yellow_block_1 black_block_1) (clear purple_block_1) (clear red_block_2) (clear yellow_block_1) (handempty))
 (:goal (and (clear red_block_1)))
 (:constraints (sometime (not (ontable yellow_block_1))) (sometime-after (not (ontable yellow_block_1)) (or (ontable red_block_2) (holding red_block_1))) (sometime (not (ontable red_block_2))) (sometime-after (not (ontable red_block_2)) (or (not (ontable black_block_1)) (on purple_block_1 red_block_2))))
)
