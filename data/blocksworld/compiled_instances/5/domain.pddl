(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   white_block_1 grey_block_1 blue_block_1 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (seen_psi_1) (hold_2))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (or (and (ontable grey_block_1) (not (= ?obj grey_block_1))) (seen_psi_1)))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (not (and (ontable grey_block_1) (not (= ?obj grey_block_1)))) (hold_0)) (when (not (and (ontable blue_block_1) (not (= ?obj blue_block_1)))) (seen_psi_1)) (when (or (not (and (clear blue_block_1) (not (= ?obj blue_block_1)))) (= ?obj white_block_1) (holding white_block_1)) (hold_2))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (or (= ?obj grey_block_1) (ontable grey_block_1) (seen_psi_1)))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (not (or (= ?obj grey_block_1) (ontable grey_block_1))) (hold_0)) (when (not (or (= ?obj blue_block_1) (ontable blue_block_1))) (seen_psi_1)) (when (or (not (or (= ?obj blue_block_1) (clear blue_block_1))) (and (holding white_block_1) (not (= ?obj white_block_1)))) (hold_2))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (or (not (or (= ?obj blue_block_1) (and (clear blue_block_1) (not (= ?underobj blue_block_1))))) (and (holding white_block_1) (not (= ?obj white_block_1)))) (hold_2))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (or (not (or (= ?underobj blue_block_1) (and (clear blue_block_1) (not (= ?obj blue_block_1))))) (= ?obj white_block_1) (holding white_block_1)) (hold_2))))
)
