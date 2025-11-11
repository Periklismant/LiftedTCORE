(define (problem liftedtcore_blocksworld_problem-problem)
 (:domain liftedtcore_blocksworld_problem-domain)
 (:objects
   brown_block_1 orange_block_1 red_block_1 black_block_2 - block
 )
 (:init (ontable black_block_1) (on brown_block_1 black_block_1) (ontable grey_block_1) (on orange_block_1 grey_block_1) (on green_block_1 brown_block_1) (ontable green_block_2) (on red_block_1 green_block_2) (on grey_block_2 red_block_1) (on white_block_1 orange_block_1) (on black_block_2 green_block_1) (clear grey_block_2) (clear white_block_1) (clear black_block_2) (handempty) (hold_2))
 (:goal (and (clear grey_block_1) (hold_0) (hold_2) (hold_3)))
)
