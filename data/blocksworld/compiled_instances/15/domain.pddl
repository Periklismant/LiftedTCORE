(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   white_block_1 blue_block_1 grey_block_2 purple_block_1 blue_block_2 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (seen_psi_1) (hold_2) (seen_psi_3))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (or (and (clear blue_block_1) (not (= ?obj blue_block_1))) (seen_psi_1)) (or (not (or (= ?obj blue_block_1) (holding blue_block_1))) (seen_psi_3)))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (not (and (clear blue_block_1) (not (= ?obj blue_block_1)))) (hold_0)) (when (or (= ?obj grey_block_2) (holding grey_block_2)) (seen_psi_1)) (when (or (= ?obj blue_block_1) (holding blue_block_1)) (hold_2)) (when (or (not (and (ontable purple_block_1) (not (= ?obj purple_block_1)))) (on white_block_1 blue_block_2)) (seen_psi_3))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (or (= ?obj blue_block_1) (clear blue_block_1) (seen_psi_1)) (or (not (and (holding blue_block_1) (not (= ?obj blue_block_1)))) (seen_psi_3)))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (not (or (= ?obj blue_block_1) (clear blue_block_1))) (hold_0)) (when (and (holding grey_block_2) (not (= ?obj grey_block_2))) (seen_psi_1)) (when (and (holding blue_block_1) (not (= ?obj blue_block_1))) (hold_2)) (when (or (not (or (= ?obj purple_block_1) (ontable purple_block_1))) (on white_block_1 blue_block_2)) (seen_psi_3))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj) (or (= ?obj blue_block_1) (and (clear blue_block_1) (not (= ?underobj blue_block_1))) (seen_psi_1)) (or (not (and (holding blue_block_1) (not (= ?obj blue_block_1)))) (seen_psi_3)))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (not (or (= ?obj blue_block_1) (and (clear blue_block_1) (not (= ?underobj blue_block_1))))) (hold_0)) (when (and (holding grey_block_2) (not (= ?obj grey_block_2))) (seen_psi_1)) (when (and (holding blue_block_1) (not (= ?obj blue_block_1))) (hold_2)) (when (or (not (ontable purple_block_1)) (and (= ?obj white_block_1) (= ?underobj blue_block_2)) (on white_block_1 blue_block_2)) (seen_psi_3))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty) (or (= ?underobj blue_block_1) (and (clear blue_block_1) (not (= ?obj blue_block_1))) (seen_psi_1)) (or (not (or (= ?obj blue_block_1) (holding blue_block_1))) (seen_psi_3)))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (not (or (= ?underobj blue_block_1) (and (clear blue_block_1) (not (= ?obj blue_block_1))))) (hold_0)) (when (or (= ?obj grey_block_2) (holding grey_block_2)) (seen_psi_1)) (when (or (= ?obj blue_block_1) (holding blue_block_1)) (hold_2)) (when (or (not (ontable purple_block_1)) (and (on white_block_1 blue_block_2) (not (and (= ?obj white_block_1) (= ?underobj blue_block_2))))) (seen_psi_3))))
)
