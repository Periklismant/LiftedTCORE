(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   orange_block_1 red_block_1 brown_block_2 blue_block_1 red_block_2 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (hold_2) (seen_psi_3))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (or (and (ontable blue_block_1) (not (= ?obj blue_block_1))) (seen_psi_3)))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (not (and (ontable red_block_2) (not (= ?obj red_block_2)))) (hold_0)) (when (and (not (and (ontable red_block_2) (not (= ?obj red_block_2)))) (not (or (and (ontable brown_block_2) (not (= ?obj brown_block_2))) (= ?obj orange_block_1) (holding orange_block_1)))) (not (hold_1))) (when (or (and (ontable brown_block_2) (not (= ?obj brown_block_2))) (= ?obj orange_block_1) (holding orange_block_1)) (hold_1)) (when (not (and (ontable blue_block_1) (not (= ?obj blue_block_1)))) (hold_2)) (when (or (= ?obj red_block_1) (holding red_block_1)) (seen_psi_3))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (or (= ?obj blue_block_1) (ontable blue_block_1) (seen_psi_3)))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (not (or (= ?obj red_block_2) (ontable red_block_2))) (hold_0)) (when (and (not (or (= ?obj red_block_2) (ontable red_block_2))) (not (or (= ?obj brown_block_2) (ontable brown_block_2) (and (holding orange_block_1) (not (= ?obj orange_block_1)))))) (not (hold_1))) (when (or (= ?obj brown_block_2) (ontable brown_block_2) (and (holding orange_block_1) (not (= ?obj orange_block_1)))) (hold_1)) (when (not (or (= ?obj blue_block_1) (ontable blue_block_1))) (hold_2)) (when (and (holding red_block_1) (not (= ?obj red_block_1))) (seen_psi_3))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (and (not (ontable red_block_2)) (not (or (ontable brown_block_2) (and (holding orange_block_1) (not (= ?obj orange_block_1)))))) (not (hold_1))) (when (or (ontable brown_block_2) (and (holding orange_block_1) (not (= ?obj orange_block_1)))) (hold_1)) (when (and (holding red_block_1) (not (= ?obj red_block_1))) (seen_psi_3))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (and (not (ontable red_block_2)) (not (or (ontable brown_block_2) (= ?obj orange_block_1) (holding orange_block_1)))) (not (hold_1))) (when (or (ontable brown_block_2) (= ?obj orange_block_1) (holding orange_block_1)) (hold_1)) (when (or (= ?obj red_block_1) (holding red_block_1)) (seen_psi_3))))
)
