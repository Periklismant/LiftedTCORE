(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   orange_block_1 green_block_1 brown_block_2 black_block_3 purple_block_1 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (hold_2) (seen_psi_3))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (or (and (ontable purple_block_1) (not (= ?obj purple_block_1))) (seen_psi_3)))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (not (and (ontable orange_block_1) (not (= ?obj orange_block_1)))) (hold_0)) (when (and (not (and (ontable orange_block_1) (not (= ?obj orange_block_1)))) (not (or (= ?obj brown_block_2) (holding brown_block_2) (and (clear black_block_3) (not (= ?obj black_block_3)))))) (not (hold_1))) (when (or (= ?obj brown_block_2) (holding brown_block_2) (and (clear black_block_3) (not (= ?obj black_block_3)))) (hold_1)) (when (not (and (ontable purple_block_1) (not (= ?obj purple_block_1)))) (hold_2)) (when (and (ontable green_block_1) (not (= ?obj green_block_1))) (seen_psi_3))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (or (= ?obj purple_block_1) (ontable purple_block_1) (seen_psi_3)))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (not (or (= ?obj orange_block_1) (ontable orange_block_1))) (hold_0)) (when (and (not (or (= ?obj orange_block_1) (ontable orange_block_1))) (not (or (and (holding brown_block_2) (not (= ?obj brown_block_2))) (= ?obj black_block_3) (clear black_block_3)))) (not (hold_1))) (when (or (and (holding brown_block_2) (not (= ?obj brown_block_2))) (= ?obj black_block_3) (clear black_block_3)) (hold_1)) (when (not (or (= ?obj purple_block_1) (ontable purple_block_1))) (hold_2)) (when (or (= ?obj green_block_1) (ontable green_block_1)) (seen_psi_3))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (and (not (ontable orange_block_1)) (not (or (and (holding brown_block_2) (not (= ?obj brown_block_2))) (= ?obj black_block_3) (and (clear black_block_3) (not (= ?underobj black_block_3)))))) (not (hold_1))) (when (or (and (holding brown_block_2) (not (= ?obj brown_block_2))) (= ?obj black_block_3) (and (clear black_block_3) (not (= ?underobj black_block_3)))) (hold_1))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (and (not (ontable orange_block_1)) (not (or (= ?obj brown_block_2) (holding brown_block_2) (= ?underobj black_block_3) (and (clear black_block_3) (not (= ?obj black_block_3)))))) (not (hold_1))) (when (or (= ?obj brown_block_2) (holding brown_block_2) (= ?underobj black_block_3) (and (clear black_block_3) (not (= ?obj black_block_3)))) (hold_1))))
)
