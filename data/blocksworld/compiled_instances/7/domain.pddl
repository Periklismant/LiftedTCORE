(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   red_block_1 green_block_1 brown_block_1 black_block_1 grey_block_1 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (hold_2) (hold_3))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (not (and (ontable brown_block_1) (not (= ?obj brown_block_1)))) (hold_0)) (when (and (not (and (ontable brown_block_1) (not (= ?obj brown_block_1)))) (not (on grey_block_1 black_block_1))) (not (hold_1))) (when (not (and (ontable red_block_1) (not (= ?obj red_block_1)))) (hold_2)) (when (and (not (and (ontable red_block_1) (not (= ?obj red_block_1)))) (not (and (ontable green_block_1) (not (= ?obj green_block_1))))) (not (hold_3))) (when (and (ontable green_block_1) (not (= ?obj green_block_1))) (hold_3))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (not (or (= ?obj brown_block_1) (ontable brown_block_1))) (hold_0)) (when (and (not (or (= ?obj brown_block_1) (ontable brown_block_1))) (not (on grey_block_1 black_block_1))) (not (hold_1))) (when (not (or (= ?obj red_block_1) (ontable red_block_1))) (hold_2)) (when (and (not (or (= ?obj red_block_1) (ontable red_block_1))) (not (or (= ?obj green_block_1) (ontable green_block_1)))) (not (hold_3))) (when (or (= ?obj green_block_1) (ontable green_block_1)) (hold_3))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (and (not (ontable brown_block_1)) (not (or (and (= ?obj grey_block_1) (= ?underobj black_block_1)) (on grey_block_1 black_block_1)))) (not (hold_1))) (when (or (and (= ?obj grey_block_1) (= ?underobj black_block_1)) (on grey_block_1 black_block_1)) (hold_1))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (and (not (ontable brown_block_1)) (not (and (on grey_block_1 black_block_1) (not (and (= ?obj grey_block_1) (= ?underobj black_block_1)))))) (not (hold_1))) (when (and (on grey_block_1 black_block_1) (not (and (= ?obj grey_block_1) (= ?underobj black_block_1)))) (hold_1))))
)
