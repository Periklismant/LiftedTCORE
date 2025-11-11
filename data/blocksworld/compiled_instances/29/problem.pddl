(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   brown_block_1 red_block_1 black_block_1 red_block_2 yellow_block_1 black_block_2 red_block_3 white_block_1 - block
 )
 (:init (ontable brown_block_1) (on red_block_1 brown_block_1) (ontable purple_block_1) (ontable black_block_1) (on brown_block_2 purple_block_1) (ontable red_block_2) (on yellow_block_1 brown_block_2) (on black_block_2 red_block_1) (on black_block_3 black_block_2) (on orange_block_1 red_block_2) (on green_block_1 black_block_3) (on red_block_3 orange_block_1) (on white_block_1 yellow_block_1) (clear black_block_1) (clear green_block_1) (clear red_block_3) (clear white_block_1) (handempty) (hold_0))
 (:goal (and (holding purple_block_1) (hold_0) (hold_1) (hold_2)))
)
