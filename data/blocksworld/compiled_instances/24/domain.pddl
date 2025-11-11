(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   orange_block_1 black_block_1 purple_block_1 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (hold_2))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (and (clear orange_block_1) (not (= ?obj orange_block_1))) (hold_0)) (when (not (and (clear orange_block_1) (not (= ?obj orange_block_1)))) (hold_1)) (when (and (not (and (clear orange_block_1) (not (= ?obj orange_block_1)))) (not (or (not (and (ontable purple_block_1) (not (= ?obj purple_block_1)))) (not (and (ontable black_block_1) (not (= ?obj black_block_1))))))) (not (hold_2))) (when (or (not (and (ontable purple_block_1) (not (= ?obj purple_block_1)))) (not (and (ontable black_block_1) (not (= ?obj black_block_1))))) (hold_2))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (or (= ?obj orange_block_1) (clear orange_block_1)) (hold_0)) (when (not (or (= ?obj orange_block_1) (clear orange_block_1))) (hold_1)) (when (and (not (or (= ?obj orange_block_1) (clear orange_block_1))) (not (or (not (or (= ?obj purple_block_1) (ontable purple_block_1))) (not (or (= ?obj black_block_1) (ontable black_block_1)))))) (not (hold_2))) (when (or (not (or (= ?obj purple_block_1) (ontable purple_block_1))) (not (or (= ?obj black_block_1) (ontable black_block_1)))) (hold_2))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (or (= ?obj orange_block_1) (and (clear orange_block_1) (not (= ?underobj orange_block_1)))) (hold_0)) (when (not (or (= ?obj orange_block_1) (and (clear orange_block_1) (not (= ?underobj orange_block_1))))) (hold_1)) (when (and (not (or (= ?obj orange_block_1) (and (clear orange_block_1) (not (= ?underobj orange_block_1))))) (not (or (not (ontable purple_block_1)) (not (ontable black_block_1))))) (not (hold_2)))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (or (= ?underobj orange_block_1) (and (clear orange_block_1) (not (= ?obj orange_block_1)))) (hold_0)) (when (not (or (= ?underobj orange_block_1) (and (clear orange_block_1) (not (= ?obj orange_block_1))))) (hold_1)) (when (and (not (or (= ?underobj orange_block_1) (and (clear orange_block_1) (not (= ?obj orange_block_1))))) (not (or (not (ontable purple_block_1)) (not (ontable black_block_1))))) (not (hold_2)))))
)
