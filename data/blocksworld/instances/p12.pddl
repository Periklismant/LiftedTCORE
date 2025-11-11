(define (problem blocksworld-problem)
 (:domain blocksworld-domain)
 (:objects
   yellow_block_1 orange_block_1 blue_block_1 purple_block_1 black_block_1 green_block_1 blue_block_2 blue_block_3 red_block_1 purple_block_2 - block
 )
 (:init (ontable yellow_block_1) (ontable orange_block_1) (ontable blue_block_1) (on purple_block_1 orange_block_1) (on black_block_1 blue_block_1) (on green_block_1 yellow_block_1) (ontable blue_block_2) (on blue_block_3 black_block_1) (on red_block_1 purple_block_1) (ontable purple_block_2) (clear green_block_1) (clear blue_block_2) (clear blue_block_3) (clear red_block_1) (clear purple_block_2) (handempty))
 (:goal (and (holding red_block_1)))
 (:constraints (sometime (not (ontable blue_block_1))) (sometime (or (on blue_block_2 orange_block_1) (holding black_block_1))))
)
