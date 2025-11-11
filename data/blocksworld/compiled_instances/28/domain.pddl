(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   yellow_block_2 blue_block_1 purple_block_1 grey_block_1 green_block_2 green_block_1 yellow_block_4 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (seen_psi_2))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (or (and (ontable green_block_2) (not (= ?obj green_block_2))) (seen_psi_2)))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (and (clear purple_block_1) (not (= ?obj purple_block_1)) (on grey_block_1 yellow_block_2)) (hold_0)) (when (not (and (ontable green_block_2) (not (= ?obj green_block_2)))) (hold_1)) (when (or (on yellow_block_4 green_block_1) (= ?obj blue_block_1) (holding blue_block_1)) (seen_psi_2))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (or (= ?obj green_block_2) (ontable green_block_2) (seen_psi_2)))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (and (or (= ?obj purple_block_1) (clear purple_block_1)) (on grey_block_1 yellow_block_2)) (hold_0)) (when (not (or (= ?obj green_block_2) (ontable green_block_2))) (hold_1)) (when (or (on yellow_block_4 green_block_1) (and (holding blue_block_1) (not (= ?obj blue_block_1)))) (seen_psi_2))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (and (or (= ?obj purple_block_1) (and (clear purple_block_1) (not (= ?underobj purple_block_1)))) (or (and (= ?obj grey_block_1) (= ?underobj yellow_block_2)) (on grey_block_1 yellow_block_2))) (hold_0)) (when (or (and (= ?obj yellow_block_4) (= ?underobj green_block_1)) (on yellow_block_4 green_block_1) (and (holding blue_block_1) (not (= ?obj blue_block_1)))) (seen_psi_2))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (and (or (= ?underobj purple_block_1) (and (clear purple_block_1) (not (= ?obj purple_block_1)))) (on grey_block_1 yellow_block_2) (not (and (= ?obj grey_block_1) (= ?underobj yellow_block_2)))) (hold_0)) (when (or (and (on yellow_block_4 green_block_1) (not (and (= ?obj yellow_block_4) (= ?underobj green_block_1)))) (= ?obj blue_block_1) (holding blue_block_1)) (seen_psi_2))))
)
