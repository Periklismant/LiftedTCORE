(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   orange_block_1 blue_block_1 black_block_1 black_block_2 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (seen_psi_2))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (or (not (or (= ?obj black_block_2) (holding black_block_2))) (seen_psi_2)))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (or (= ?obj orange_block_1) (holding orange_block_1) (not (and (ontable black_block_1) (not (= ?obj black_block_1))))) (hold_0)) (when (or (= ?obj black_block_2) (holding black_block_2)) (hold_1)) (when (not (and (ontable blue_block_1) (not (= ?obj blue_block_1)))) (seen_psi_2))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (or (not (and (holding black_block_2) (not (= ?obj black_block_2)))) (seen_psi_2)))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (or (and (holding orange_block_1) (not (= ?obj orange_block_1))) (not (or (= ?obj black_block_1) (ontable black_block_1)))) (hold_0)) (when (and (holding black_block_2) (not (= ?obj black_block_2))) (hold_1)) (when (not (or (= ?obj blue_block_1) (ontable blue_block_1))) (seen_psi_2))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj) (or (not (and (holding black_block_2) (not (= ?obj black_block_2)))) (seen_psi_2)))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (or (and (holding orange_block_1) (not (= ?obj orange_block_1))) (not (ontable black_block_1))) (hold_0)) (when (and (holding black_block_2) (not (= ?obj black_block_2))) (hold_1))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty) (or (not (or (= ?obj black_block_2) (holding black_block_2))) (seen_psi_2)))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (or (= ?obj orange_block_1) (holding orange_block_1) (not (ontable black_block_1))) (hold_0)) (when (or (= ?obj black_block_2) (holding black_block_2)) (hold_1))))
)
