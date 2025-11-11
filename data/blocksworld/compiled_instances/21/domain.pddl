(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   green_block_1 blue_block_3 black_block_3 black_block_2 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (seen_psi_2))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (or (and (ontable green_block_1) (not (= ?obj green_block_1))) (seen_psi_2)))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (or (= ?obj black_block_3) (holding black_block_3) (not (and (ontable blue_block_3) (not (= ?obj blue_block_3))))) (hold_0)) (when (not (and (ontable green_block_1) (not (= ?obj green_block_1)))) (hold_1)) (when (or (= ?obj black_block_2) (holding black_block_2)) (seen_psi_2))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (or (= ?obj green_block_1) (ontable green_block_1) (seen_psi_2)))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (or (and (holding black_block_3) (not (= ?obj black_block_3))) (not (or (= ?obj blue_block_3) (ontable blue_block_3)))) (hold_0)) (when (not (or (= ?obj green_block_1) (ontable green_block_1))) (hold_1)) (when (and (holding black_block_2) (not (= ?obj black_block_2))) (seen_psi_2))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (or (and (holding black_block_3) (not (= ?obj black_block_3))) (not (ontable blue_block_3))) (hold_0)) (when (and (holding black_block_2) (not (= ?obj black_block_2))) (seen_psi_2))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (or (= ?obj black_block_3) (holding black_block_3) (not (ontable blue_block_3))) (hold_0)) (when (or (= ?obj black_block_2) (holding black_block_2)) (seen_psi_2))))
)
