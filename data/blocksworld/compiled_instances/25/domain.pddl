(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   yellow_block_2 grey_block_2 black_block_1 white_block_1 red_block_2 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (hold_2))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (and (not (on black_block_1 grey_block_2)) (not (or (and (clear red_block_2) (not (= ?obj red_block_2))) (= ?obj white_block_1) (holding white_block_1)))) (not (hold_1))) (when (or (and (clear red_block_2) (not (= ?obj red_block_2))) (= ?obj white_block_1) (holding white_block_1)) (hold_1))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (and (not (on black_block_1 grey_block_2)) (not (or (= ?obj red_block_2) (clear red_block_2) (and (holding white_block_1) (not (= ?obj white_block_1)))))) (not (hold_1))) (when (or (= ?obj red_block_2) (clear red_block_2) (and (holding white_block_1) (not (= ?obj white_block_1)))) (hold_1))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (not (or (and (= ?obj black_block_1) (= ?underobj grey_block_2)) (on black_block_1 grey_block_2))) (hold_0)) (when (and (not (or (and (= ?obj black_block_1) (= ?underobj grey_block_2)) (on black_block_1 grey_block_2))) (not (or (= ?obj red_block_2) (and (clear red_block_2) (not (= ?underobj red_block_2))) (and (holding white_block_1) (not (= ?obj white_block_1)))))) (not (hold_1))) (when (or (= ?obj red_block_2) (and (clear red_block_2) (not (= ?underobj red_block_2))) (and (holding white_block_1) (not (= ?obj white_block_1)))) (hold_1)) (when (or (and (= ?obj yellow_block_2) (= ?underobj red_block_2)) (on yellow_block_2 red_block_2)) (hold_2))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (not (and (on black_block_1 grey_block_2) (not (and (= ?obj black_block_1) (= ?underobj grey_block_2))))) (hold_0)) (when (and (not (and (on black_block_1 grey_block_2) (not (and (= ?obj black_block_1) (= ?underobj grey_block_2))))) (not (or (= ?underobj red_block_2) (and (clear red_block_2) (not (= ?obj red_block_2))) (= ?obj white_block_1) (holding white_block_1)))) (not (hold_1))) (when (or (= ?underobj red_block_2) (and (clear red_block_2) (not (= ?obj red_block_2))) (= ?obj white_block_1) (holding white_block_1)) (hold_1)) (when (and (on yellow_block_2 red_block_2) (not (and (= ?obj yellow_block_2) (= ?underobj red_block_2)))) (hold_2))))
)
