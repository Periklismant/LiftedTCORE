(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   brown_block_1 yellow_block_1 black_block_4 black_block_2 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (seen_psi_1) (hold_2))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (or (and (clear black_block_4) (not (= ?obj black_block_4))) (seen_psi_1)))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (not (and (clear black_block_4) (not (= ?obj black_block_4)))) (hold_0)) (when (and (clear yellow_block_1) (not (= ?obj yellow_block_1))) (hold_2))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (or (= ?obj black_block_4) (clear black_block_4) (seen_psi_1)))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (not (or (= ?obj black_block_4) (clear black_block_4))) (hold_0)) (when (or (= ?obj yellow_block_1) (clear yellow_block_1)) (hold_2))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj) (or (= ?obj black_block_4) (and (clear black_block_4) (not (= ?underobj black_block_4))) (seen_psi_1)))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (not (or (= ?obj black_block_4) (and (clear black_block_4) (not (= ?underobj black_block_4))))) (hold_0)) (when (or (and (= ?obj brown_block_1) (= ?underobj black_block_2)) (on brown_block_1 black_block_2) (and (= ?obj black_block_4) (= ?underobj black_block_2)) (on black_block_4 black_block_2)) (seen_psi_1)) (when (or (= ?obj yellow_block_1) (and (clear yellow_block_1) (not (= ?underobj yellow_block_1)))) (hold_2))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty) (or (= ?underobj black_block_4) (and (clear black_block_4) (not (= ?obj black_block_4))) (seen_psi_1)))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (not (or (= ?underobj black_block_4) (and (clear black_block_4) (not (= ?obj black_block_4))))) (hold_0)) (when (or (and (on brown_block_1 black_block_2) (not (and (= ?obj brown_block_1) (= ?underobj black_block_2)))) (and (on black_block_4 black_block_2) (not (and (= ?obj black_block_4) (= ?underobj black_block_2))))) (seen_psi_1)) (when (or (= ?underobj yellow_block_1) (and (clear yellow_block_1) (not (= ?obj yellow_block_1)))) (hold_2))))
)
