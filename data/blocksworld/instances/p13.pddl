(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   brown_block_1 orange_block_1 grey_block_1 white_block_1 red_block_1 black_block_1 yellow_block_1 red_block_2 green_block_1 blue_block_1 - block
 )
 (:init (ontable brown_block_1) (on orange_block_1 brown_block_1) (ontable grey_block_1) (on white_block_1 orange_block_1) (on red_block_1 white_block_1) (ontable black_block_1) (on yellow_block_1 grey_block_1) (ontable red_block_2) (on green_block_1 red_block_1) (on blue_block_1 red_block_2) (clear black_block_1) (clear yellow_block_1) (clear green_block_1) (clear blue_block_1) (handempty))
 (:goal (and (ontable yellow_block_1)))
 (:constraints (sometime (not (on yellow_block_1 brown_block_1))) (sometime-after (not (on yellow_block_1 brown_block_1)) (or (holding white_block_1) (not (clear yellow_block_1)))) (sometime (not (ontable grey_block_1))))
)
