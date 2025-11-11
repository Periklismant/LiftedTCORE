(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   brown_block_3 orange_block_1 red_block_1 grey_block_1 brown_block_4 black_block_2 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (hold_2))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (or (on grey_block_1 brown_block_4) (and (clear brown_block_3) (not (= ?obj brown_block_3)))) (hold_0)) (when (and (not (on black_block_2 orange_block_1)) (not (or (not (and (clear red_block_1) (not (= ?obj red_block_1)))) (= ?obj brown_block_4) (holding brown_block_4)))) (not (hold_2))) (when (or (not (and (clear red_block_1) (not (= ?obj red_block_1)))) (= ?obj brown_block_4) (holding brown_block_4)) (hold_2))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (or (on grey_block_1 brown_block_4) (= ?obj brown_block_3) (clear brown_block_3)) (hold_0)) (when (and (not (on black_block_2 orange_block_1)) (not (or (not (or (= ?obj red_block_1) (clear red_block_1))) (and (holding brown_block_4) (not (= ?obj brown_block_4)))))) (not (hold_2))) (when (or (not (or (= ?obj red_block_1) (clear red_block_1))) (and (holding brown_block_4) (not (= ?obj brown_block_4)))) (hold_2))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (or (and (= ?obj grey_block_1) (= ?underobj brown_block_4)) (on grey_block_1 brown_block_4) (= ?obj brown_block_3) (and (clear brown_block_3) (not (= ?underobj brown_block_3)))) (hold_0)) (when (not (or (and (= ?obj black_block_2) (= ?underobj orange_block_1)) (on black_block_2 orange_block_1))) (hold_1)) (when (and (not (or (and (= ?obj black_block_2) (= ?underobj orange_block_1)) (on black_block_2 orange_block_1))) (not (or (not (or (= ?obj red_block_1) (and (clear red_block_1) (not (= ?underobj red_block_1))))) (and (holding brown_block_4) (not (= ?obj brown_block_4)))))) (not (hold_2))) (when (or (not (or (= ?obj red_block_1) (and (clear red_block_1) (not (= ?underobj red_block_1))))) (and (holding brown_block_4) (not (= ?obj brown_block_4)))) (hold_2))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (or (and (on grey_block_1 brown_block_4) (not (and (= ?obj grey_block_1) (= ?underobj brown_block_4)))) (= ?underobj brown_block_3) (and (clear brown_block_3) (not (= ?obj brown_block_3)))) (hold_0)) (when (not (and (on black_block_2 orange_block_1) (not (and (= ?obj black_block_2) (= ?underobj orange_block_1))))) (hold_1)) (when (and (not (and (on black_block_2 orange_block_1) (not (and (= ?obj black_block_2) (= ?underobj orange_block_1))))) (not (or (not (or (= ?underobj red_block_1) (and (clear red_block_1) (not (= ?obj red_block_1))))) (= ?obj brown_block_4) (holding brown_block_4)))) (not (hold_2))) (when (or (not (or (= ?underobj red_block_1) (and (clear red_block_1) (not (= ?obj red_block_1))))) (= ?obj brown_block_4) (holding brown_block_4)) (hold_2))))
)
