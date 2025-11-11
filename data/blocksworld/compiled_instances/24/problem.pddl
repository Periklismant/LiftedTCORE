(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   yellow_block_1 blue_block_1 green_block_1 blue_block_2 blue_block_3 red_block_1 purple_block_2 white_block_1 orange_block_2 red_block_2 - block
 )
 (:init (ontable yellow_block_1) (on orange_block_1 yellow_block_1) (on blue_block_1 orange_block_1) (ontable purple_block_1) (ontable black_block_1) (on green_block_1 purple_block_1) (on blue_block_2 blue_block_1) (ontable blue_block_3) (on red_block_1 green_block_1) (on purple_block_2 blue_block_2) (on white_block_1 black_block_1) (on orange_block_2 blue_block_3) (on red_block_2 purple_block_2) (clear red_block_1) (clear white_block_1) (clear orange_block_2) (clear red_block_2) (handempty) (hold_1))
 (:goal (and (clear purple_block_2) (hold_0) (hold_1) (hold_2)))
)
