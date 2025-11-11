(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   green_block_3 green_block_2 yellow_block_2 orange_block_2 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (seen_psi_1) (hold_2) (hold_3))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (or (not (or (= ?obj green_block_3) (holding green_block_3))) (seen_psi_1)))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (or (= ?obj green_block_3) (holding green_block_3)) (hold_0)) (when (or (and (ontable green_block_2) (not (= ?obj green_block_2))) (not (and (clear yellow_block_2) (not (= ?obj yellow_block_2))))) (seen_psi_1)) (when (and (not (on orange_block_2 yellow_block_2)) (not (or (not (and (clear green_block_3) (not (= ?obj green_block_3)))) (and (clear orange_block_2) (not (= ?obj orange_block_2)))))) (not (hold_3))) (when (or (not (and (clear green_block_3) (not (= ?obj green_block_3)))) (and (clear orange_block_2) (not (= ?obj orange_block_2)))) (hold_3))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (or (not (and (holding green_block_3) (not (= ?obj green_block_3)))) (seen_psi_1)))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (and (holding green_block_3) (not (= ?obj green_block_3))) (hold_0)) (when (or (= ?obj green_block_2) (ontable green_block_2) (not (or (= ?obj yellow_block_2) (clear yellow_block_2)))) (seen_psi_1)) (when (and (not (on orange_block_2 yellow_block_2)) (not (or (not (or (= ?obj green_block_3) (clear green_block_3))) (= ?obj orange_block_2) (clear orange_block_2)))) (not (hold_3))) (when (or (not (or (= ?obj green_block_3) (clear green_block_3))) (= ?obj orange_block_2) (clear orange_block_2)) (hold_3))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj) (or (not (and (holding green_block_3) (not (= ?obj green_block_3)))) (seen_psi_1)))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (and (holding green_block_3) (not (= ?obj green_block_3))) (hold_0)) (when (or (ontable green_block_2) (not (or (= ?obj yellow_block_2) (and (clear yellow_block_2) (not (= ?underobj yellow_block_2)))))) (seen_psi_1)) (when (not (or (and (= ?obj orange_block_2) (= ?underobj yellow_block_2)) (on orange_block_2 yellow_block_2))) (hold_2)) (when (and (not (or (and (= ?obj orange_block_2) (= ?underobj yellow_block_2)) (on orange_block_2 yellow_block_2))) (not (or (not (or (= ?obj green_block_3) (and (clear green_block_3) (not (= ?underobj green_block_3))))) (= ?obj orange_block_2) (and (clear orange_block_2) (not (= ?underobj orange_block_2)))))) (not (hold_3))) (when (or (not (or (= ?obj green_block_3) (and (clear green_block_3) (not (= ?underobj green_block_3))))) (= ?obj orange_block_2) (and (clear orange_block_2) (not (= ?underobj orange_block_2)))) (hold_3))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty) (or (not (or (= ?obj green_block_3) (holding green_block_3))) (seen_psi_1)))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (or (= ?obj green_block_3) (holding green_block_3)) (hold_0)) (when (or (ontable green_block_2) (not (or (= ?underobj yellow_block_2) (and (clear yellow_block_2) (not (= ?obj yellow_block_2)))))) (seen_psi_1)) (when (not (and (on orange_block_2 yellow_block_2) (not (and (= ?obj orange_block_2) (= ?underobj yellow_block_2))))) (hold_2)) (when (and (not (and (on orange_block_2 yellow_block_2) (not (and (= ?obj orange_block_2) (= ?underobj yellow_block_2))))) (not (or (not (or (= ?underobj green_block_3) (and (clear green_block_3) (not (= ?obj green_block_3))))) (= ?underobj orange_block_2) (and (clear orange_block_2) (not (= ?obj orange_block_2)))))) (not (hold_3))) (when (or (not (or (= ?underobj green_block_3) (and (clear green_block_3) (not (= ?obj green_block_3))))) (= ?underobj orange_block_2) (and (clear orange_block_2) (not (= ?obj orange_block_2)))) (hold_3))))
)
