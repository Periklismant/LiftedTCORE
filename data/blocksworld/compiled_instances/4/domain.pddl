(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   green_block_1 brown_block_1 black_block_1 red_block_2 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (hold_2))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (and (not (on green_block_1 brown_block_1)) (not (or (on black_block_1 green_block_1) (= ?obj red_block_2) (holding red_block_2)))) (not (hold_1))) (when (or (on black_block_1 green_block_1) (= ?obj red_block_2) (holding red_block_2)) (hold_1))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (and (not (on green_block_1 brown_block_1)) (not (or (on black_block_1 green_block_1) (and (holding red_block_2) (not (= ?obj red_block_2)))))) (not (hold_1))) (when (or (on black_block_1 green_block_1) (and (holding red_block_2) (not (= ?obj red_block_2)))) (hold_1))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (not (or (and (= ?obj green_block_1) (= ?underobj brown_block_1)) (on green_block_1 brown_block_1))) (hold_0)) (when (and (not (or (and (= ?obj green_block_1) (= ?underobj brown_block_1)) (on green_block_1 brown_block_1))) (not (or (and (= ?obj black_block_1) (= ?underobj green_block_1)) (on black_block_1 green_block_1) (and (holding red_block_2) (not (= ?obj red_block_2)))))) (not (hold_1))) (when (or (and (= ?obj black_block_1) (= ?underobj green_block_1)) (on black_block_1 green_block_1) (and (holding red_block_2) (not (= ?obj red_block_2)))) (hold_1)) (when (or (and (= ?obj brown_block_1) (= ?underobj green_block_1)) (on brown_block_1 green_block_1)) (hold_2))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (not (and (on green_block_1 brown_block_1) (not (and (= ?obj green_block_1) (= ?underobj brown_block_1))))) (hold_0)) (when (and (not (and (on green_block_1 brown_block_1) (not (and (= ?obj green_block_1) (= ?underobj brown_block_1))))) (not (or (and (on black_block_1 green_block_1) (not (and (= ?obj black_block_1) (= ?underobj green_block_1)))) (= ?obj red_block_2) (holding red_block_2)))) (not (hold_1))) (when (or (and (on black_block_1 green_block_1) (not (and (= ?obj black_block_1) (= ?underobj green_block_1)))) (= ?obj red_block_2) (holding red_block_2)) (hold_1)) (when (and (on brown_block_1 green_block_1) (not (and (= ?obj brown_block_1) (= ?underobj green_block_1)))) (hold_2))))
)
