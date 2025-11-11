(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   orange_block_2 red_block_1 orange_block_1 blue_block_1 grey_block_2 black_block_1 red_block_2 black_block_2 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (hold_2) (hold_3))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (not (and (ontable orange_block_2) (not (= ?obj orange_block_2)))) (hold_2)) (when (and (not (and (ontable orange_block_2) (not (= ?obj orange_block_2)))) (not (or (= ?obj orange_block_1) (holding orange_block_1) (= ?obj red_block_1) (holding red_block_1)))) (not (hold_3))) (when (or (= ?obj orange_block_1) (holding orange_block_1) (= ?obj red_block_1) (holding red_block_1)) (hold_3))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (not (or (= ?obj orange_block_2) (ontable orange_block_2))) (hold_2)) (when (and (not (or (= ?obj orange_block_2) (ontable orange_block_2))) (not (or (and (holding orange_block_1) (not (= ?obj orange_block_1))) (and (holding red_block_1) (not (= ?obj red_block_1)))))) (not (hold_3))) (when (or (and (holding orange_block_1) (not (= ?obj orange_block_1))) (and (holding red_block_1) (not (= ?obj red_block_1)))) (hold_3))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (not (or (and (= ?obj blue_block_1) (= ?underobj black_block_2)) (on blue_block_1 black_block_2))) (hold_0)) (when (and (not (or (and (= ?obj blue_block_1) (= ?underobj black_block_2)) (on blue_block_1 black_block_2))) (not (or (and (= ?obj black_block_2) (= ?underobj grey_block_2)) (on black_block_2 grey_block_2) (and (= ?obj black_block_1) (= ?underobj red_block_2)) (on black_block_1 red_block_2)))) (not (hold_1))) (when (or (and (= ?obj black_block_2) (= ?underobj grey_block_2)) (on black_block_2 grey_block_2) (and (= ?obj black_block_1) (= ?underobj red_block_2)) (on black_block_1 red_block_2)) (hold_1)) (when (and (not (ontable orange_block_2)) (not (or (and (holding orange_block_1) (not (= ?obj orange_block_1))) (and (holding red_block_1) (not (= ?obj red_block_1)))))) (not (hold_3))) (when (or (and (holding orange_block_1) (not (= ?obj orange_block_1))) (and (holding red_block_1) (not (= ?obj red_block_1)))) (hold_3))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (not (and (on blue_block_1 black_block_2) (not (and (= ?obj blue_block_1) (= ?underobj black_block_2))))) (hold_0)) (when (and (not (and (on blue_block_1 black_block_2) (not (and (= ?obj blue_block_1) (= ?underobj black_block_2))))) (not (or (and (on black_block_2 grey_block_2) (not (and (= ?obj black_block_2) (= ?underobj grey_block_2)))) (and (on black_block_1 red_block_2) (not (and (= ?obj black_block_1) (= ?underobj red_block_2))))))) (not (hold_1))) (when (or (and (on black_block_2 grey_block_2) (not (and (= ?obj black_block_2) (= ?underobj grey_block_2)))) (and (on black_block_1 red_block_2) (not (and (= ?obj black_block_1) (= ?underobj red_block_2))))) (hold_1)) (when (and (not (ontable orange_block_2)) (not (or (= ?obj orange_block_1) (holding orange_block_1) (= ?obj red_block_1) (holding red_block_1)))) (not (hold_3))) (when (or (= ?obj orange_block_1) (holding orange_block_1) (= ?obj red_block_1) (holding red_block_1)) (hold_3))))
)
