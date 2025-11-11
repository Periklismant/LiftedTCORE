(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   brown_block_1 yellow_block_1 white_block_1 grey_block_1 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (hold_2))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (and (not (on yellow_block_1 brown_block_1)) (not (or (= ?obj white_block_1) (holding white_block_1) (not (and (clear yellow_block_1) (not (= ?obj yellow_block_1))))))) (not (hold_1))) (when (or (= ?obj white_block_1) (holding white_block_1) (not (and (clear yellow_block_1) (not (= ?obj yellow_block_1))))) (hold_1)) (when (not (and (ontable grey_block_1) (not (= ?obj grey_block_1)))) (hold_2))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (and (not (on yellow_block_1 brown_block_1)) (not (or (and (holding white_block_1) (not (= ?obj white_block_1))) (not (or (= ?obj yellow_block_1) (clear yellow_block_1)))))) (not (hold_1))) (when (or (and (holding white_block_1) (not (= ?obj white_block_1))) (not (or (= ?obj yellow_block_1) (clear yellow_block_1)))) (hold_1)) (when (not (or (= ?obj grey_block_1) (ontable grey_block_1))) (hold_2))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (not (or (and (= ?obj yellow_block_1) (= ?underobj brown_block_1)) (on yellow_block_1 brown_block_1))) (hold_0)) (when (and (not (or (and (= ?obj yellow_block_1) (= ?underobj brown_block_1)) (on yellow_block_1 brown_block_1))) (not (or (and (holding white_block_1) (not (= ?obj white_block_1))) (not (or (= ?obj yellow_block_1) (and (clear yellow_block_1) (not (= ?underobj yellow_block_1)))))))) (not (hold_1))) (when (or (and (holding white_block_1) (not (= ?obj white_block_1))) (not (or (= ?obj yellow_block_1) (and (clear yellow_block_1) (not (= ?underobj yellow_block_1)))))) (hold_1))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (not (and (on yellow_block_1 brown_block_1) (not (and (= ?obj yellow_block_1) (= ?underobj brown_block_1))))) (hold_0)) (when (and (not (and (on yellow_block_1 brown_block_1) (not (and (= ?obj yellow_block_1) (= ?underobj brown_block_1))))) (not (or (= ?obj white_block_1) (holding white_block_1) (not (or (= ?underobj yellow_block_1) (and (clear yellow_block_1) (not (= ?obj yellow_block_1)))))))) (not (hold_1))) (when (or (= ?obj white_block_1) (holding white_block_1) (not (or (= ?underobj yellow_block_1) (and (clear yellow_block_1) (not (= ?obj yellow_block_1)))))) (hold_1))))
)
