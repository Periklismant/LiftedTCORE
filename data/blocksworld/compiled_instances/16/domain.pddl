(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   green_block_2 blue_block_1 purple_block_1 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (not (and (ontable green_block_2) (not (= ?obj green_block_2)))))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (and (clear purple_block_1) (not (= ?obj purple_block_1)) (not (and (clear blue_block_1) (not (= ?obj blue_block_1))))) (hold_0))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (not (or (= ?obj green_block_2) (ontable green_block_2))))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (and (or (= ?obj purple_block_1) (clear purple_block_1)) (not (or (= ?obj blue_block_1) (clear blue_block_1)))) (hold_0))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (and (or (= ?obj purple_block_1) (and (clear purple_block_1) (not (= ?underobj purple_block_1)))) (not (or (= ?obj blue_block_1) (and (clear blue_block_1) (not (= ?underobj blue_block_1)))))) (hold_0))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (and (or (= ?underobj purple_block_1) (and (clear purple_block_1) (not (= ?obj purple_block_1)))) (not (or (= ?underobj blue_block_1) (and (clear blue_block_1) (not (= ?obj blue_block_1)))))) (hold_0))))
)
