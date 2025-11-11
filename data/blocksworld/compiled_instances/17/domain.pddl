(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   grey_block_2 black_block_1 grey_block_1 green_block_2 green_block_1 white_block_1 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (seen_psi_1) (hold_2) (hold_3))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (or (not (and (ontable white_block_1) (not (= ?obj white_block_1)))) (seen_psi_1)))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (and (ontable white_block_1) (not (= ?obj white_block_1))) (hold_0)) (when (or (and (clear green_block_2) (not (= ?obj green_block_2))) (on white_block_1 grey_block_2)) (seen_psi_1)) (when (and (not (on white_block_1 grey_block_1)) (not (or (and (clear green_block_1) (not (= ?obj green_block_1))) (= ?obj black_block_1) (holding black_block_1)))) (not (hold_3))) (when (or (and (clear green_block_1) (not (= ?obj green_block_1))) (= ?obj black_block_1) (holding black_block_1)) (hold_3))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (or (not (or (= ?obj white_block_1) (ontable white_block_1))) (seen_psi_1)))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (or (= ?obj white_block_1) (ontable white_block_1)) (hold_0)) (when (or (= ?obj green_block_2) (clear green_block_2) (on white_block_1 grey_block_2)) (seen_psi_1)) (when (and (not (on white_block_1 grey_block_1)) (not (or (= ?obj green_block_1) (clear green_block_1) (and (holding black_block_1) (not (= ?obj black_block_1)))))) (not (hold_3))) (when (or (= ?obj green_block_1) (clear green_block_1) (and (holding black_block_1) (not (= ?obj black_block_1)))) (hold_3))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (or (= ?obj green_block_2) (and (clear green_block_2) (not (= ?underobj green_block_2))) (and (= ?obj white_block_1) (= ?underobj grey_block_2)) (on white_block_1 grey_block_2)) (seen_psi_1)) (when (not (or (and (= ?obj white_block_1) (= ?underobj grey_block_1)) (on white_block_1 grey_block_1))) (hold_2)) (when (and (not (or (and (= ?obj white_block_1) (= ?underobj grey_block_1)) (on white_block_1 grey_block_1))) (not (or (= ?obj green_block_1) (and (clear green_block_1) (not (= ?underobj green_block_1))) (and (holding black_block_1) (not (= ?obj black_block_1)))))) (not (hold_3))) (when (or (= ?obj green_block_1) (and (clear green_block_1) (not (= ?underobj green_block_1))) (and (holding black_block_1) (not (= ?obj black_block_1)))) (hold_3))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (or (= ?underobj green_block_2) (and (clear green_block_2) (not (= ?obj green_block_2))) (and (on white_block_1 grey_block_2) (not (and (= ?obj white_block_1) (= ?underobj grey_block_2))))) (seen_psi_1)) (when (not (and (on white_block_1 grey_block_1) (not (and (= ?obj white_block_1) (= ?underobj grey_block_1))))) (hold_2)) (when (and (not (and (on white_block_1 grey_block_1) (not (and (= ?obj white_block_1) (= ?underobj grey_block_1))))) (not (or (= ?underobj green_block_1) (and (clear green_block_1) (not (= ?obj green_block_1))) (= ?obj black_block_1) (holding black_block_1)))) (not (hold_3))) (when (or (= ?underobj green_block_1) (and (clear green_block_1) (not (= ?obj green_block_1))) (= ?obj black_block_1) (holding black_block_1)) (hold_3))))
)
