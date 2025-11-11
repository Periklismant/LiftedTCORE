(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   orange_block_2 orange_block_3 orange_block_1 yellow_block_1 white_block_1 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (seen_psi_1))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (not (and (ontable orange_block_2) (not (= ?obj orange_block_2)))))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (or (not (and (ontable orange_block_3) (not (= ?obj orange_block_3)))) (and (clear white_block_1) (not (= ?obj white_block_1)))) (seen_psi_1))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (not (or (= ?obj orange_block_2) (ontable orange_block_2))))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (or (not (or (= ?obj orange_block_3) (ontable orange_block_3))) (= ?obj white_block_1) (clear white_block_1)) (seen_psi_1))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj) (or (and (= ?obj orange_block_1) (= ?underobj yellow_block_1)) (on orange_block_1 yellow_block_1) (seen_psi_1)))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (not (or (and (= ?obj orange_block_1) (= ?underobj yellow_block_1)) (on orange_block_1 yellow_block_1))) (hold_0)) (when (or (not (ontable orange_block_3)) (= ?obj white_block_1) (and (clear white_block_1) (not (= ?underobj white_block_1)))) (seen_psi_1))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty) (or (and (on orange_block_1 yellow_block_1) (not (and (= ?obj orange_block_1) (= ?underobj yellow_block_1)))) (seen_psi_1)))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (not (and (on orange_block_1 yellow_block_1) (not (and (= ?obj orange_block_1) (= ?underobj yellow_block_1))))) (hold_0)) (when (or (not (ontable orange_block_3)) (= ?underobj white_block_1) (and (clear white_block_1) (not (= ?obj white_block_1)))) (seen_psi_1))))
)
