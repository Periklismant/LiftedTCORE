(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   red_block_1 yellow_block_1 black_block_1 purple_block_1 red_block_2 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (hold_2) (hold_3))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (not (and (ontable yellow_block_1) (not (= ?obj yellow_block_1)))) (hold_0)) (when (and (not (and (ontable yellow_block_1) (not (= ?obj yellow_block_1)))) (not (or (and (ontable red_block_2) (not (= ?obj red_block_2))) (= ?obj red_block_1) (holding red_block_1)))) (not (hold_1))) (when (or (and (ontable red_block_2) (not (= ?obj red_block_2))) (= ?obj red_block_1) (holding red_block_1)) (hold_1)) (when (not (and (ontable red_block_2) (not (= ?obj red_block_2)))) (hold_2)) (when (and (not (and (ontable red_block_2) (not (= ?obj red_block_2)))) (not (or (not (and (ontable black_block_1) (not (= ?obj black_block_1)))) (on purple_block_1 red_block_2)))) (not (hold_3))) (when (or (not (and (ontable black_block_1) (not (= ?obj black_block_1)))) (on purple_block_1 red_block_2)) (hold_3))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (not (or (= ?obj yellow_block_1) (ontable yellow_block_1))) (hold_0)) (when (and (not (or (= ?obj yellow_block_1) (ontable yellow_block_1))) (not (or (= ?obj red_block_2) (ontable red_block_2) (and (holding red_block_1) (not (= ?obj red_block_1)))))) (not (hold_1))) (when (or (= ?obj red_block_2) (ontable red_block_2) (and (holding red_block_1) (not (= ?obj red_block_1)))) (hold_1)) (when (not (or (= ?obj red_block_2) (ontable red_block_2))) (hold_2)) (when (and (not (or (= ?obj red_block_2) (ontable red_block_2))) (not (or (not (or (= ?obj black_block_1) (ontable black_block_1))) (on purple_block_1 red_block_2)))) (not (hold_3))) (when (or (not (or (= ?obj black_block_1) (ontable black_block_1))) (on purple_block_1 red_block_2)) (hold_3))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (and (not (ontable yellow_block_1)) (not (or (ontable red_block_2) (and (holding red_block_1) (not (= ?obj red_block_1)))))) (not (hold_1))) (when (or (ontable red_block_2) (and (holding red_block_1) (not (= ?obj red_block_1)))) (hold_1)) (when (and (not (ontable red_block_2)) (not (or (not (ontable black_block_1)) (and (= ?obj purple_block_1) (= ?underobj red_block_2)) (on purple_block_1 red_block_2)))) (not (hold_3))) (when (or (not (ontable black_block_1)) (and (= ?obj purple_block_1) (= ?underobj red_block_2)) (on purple_block_1 red_block_2)) (hold_3))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (and (not (ontable yellow_block_1)) (not (or (ontable red_block_2) (= ?obj red_block_1) (holding red_block_1)))) (not (hold_1))) (when (or (ontable red_block_2) (= ?obj red_block_1) (holding red_block_1)) (hold_1)) (when (and (not (ontable red_block_2)) (not (or (not (ontable black_block_1)) (and (on purple_block_1 red_block_2) (not (and (= ?obj purple_block_1) (= ?underobj red_block_2))))))) (not (hold_3))) (when (or (not (ontable black_block_1)) (and (on purple_block_1 red_block_2) (not (and (= ?obj purple_block_1) (= ?underobj red_block_2))))) (hold_3))))
)
