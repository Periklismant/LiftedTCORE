(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   red_block_1 blue_block_1 grey_block_1 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty) (not (and (ontable blue_block_1) (not (= ?obj blue_block_1)))))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (and (clear grey_block_1) (not (= ?obj grey_block_1)) (not (and (ontable red_block_1) (not (= ?obj red_block_1))))) (hold_0))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj) (not (or (= ?obj blue_block_1) (ontable blue_block_1))))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (and (or (= ?obj grey_block_1) (clear grey_block_1)) (not (or (= ?obj red_block_1) (ontable red_block_1)))) (hold_0))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (and (or (= ?obj grey_block_1) (and (clear grey_block_1) (not (= ?underobj grey_block_1)))) (not (ontable red_block_1))) (hold_0))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (and (or (= ?underobj grey_block_1) (and (clear grey_block_1) (not (= ?obj grey_block_1)))) (not (ontable red_block_1))) (hold_0))))
)
