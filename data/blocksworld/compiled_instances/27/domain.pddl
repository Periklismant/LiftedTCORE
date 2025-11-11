(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   green_block_1 yellow_block_1 white_block_1 blue_block_1 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (not (and (ontable yellow_block_1) (not (= ?obj yellow_block_1)))))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (or (not (and (ontable blue_block_1) (not (= ?obj blue_block_1)))) (on white_block_1 green_block_1)) (hold_0))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (not (or (= ?obj yellow_block_1) (ontable yellow_block_1))))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (or (not (or (= ?obj blue_block_1) (ontable blue_block_1))) (on white_block_1 green_block_1)) (hold_0))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (or (not (ontable blue_block_1)) (and (= ?obj white_block_1) (= ?underobj green_block_1)) (on white_block_1 green_block_1)) (hold_0))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (or (not (ontable blue_block_1)) (and (on white_block_1 green_block_1) (not (and (= ?obj white_block_1) (= ?underobj green_block_1))))) (hold_0))))
)
