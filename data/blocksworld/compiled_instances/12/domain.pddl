(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   orange_block_1 blue_block_1 black_block_1 blue_block_2 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (not (and (ontable blue_block_1) (not (= ?obj blue_block_1)))) (hold_0)) (when (or (on blue_block_2 orange_block_1) (= ?obj black_block_1) (holding black_block_1)) (hold_1))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (not (or (= ?obj blue_block_1) (ontable blue_block_1))) (hold_0)) (when (or (on blue_block_2 orange_block_1) (and (holding black_block_1) (not (= ?obj black_block_1)))) (hold_1))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (or (and (= ?obj blue_block_2) (= ?underobj orange_block_1)) (on blue_block_2 orange_block_1) (and (holding black_block_1) (not (= ?obj black_block_1)))) (hold_1))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (or (and (on blue_block_2 orange_block_1) (not (and (= ?obj blue_block_2) (= ?underobj orange_block_1)))) (= ?obj black_block_1) (holding black_block_1)) (hold_1))))
)
