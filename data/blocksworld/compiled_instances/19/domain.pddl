(define (domain liftedtcore_blocksworld_problem-domain)
 (:types block)
 (:constants
   green_block_3 green_block_2 orange_block_1 green_block_4 yellow_block_2 - block
 )
 (:predicates (clear ?obj - block) (ontable ?obj - block) (handempty) (holding ?obj - block) (on ?obj1 - block ?obj2 - block) (hold_0) (hold_1) (hold_2))
 (:action pickup
  :parameters ( ?obj - block)
  :precondition (and (clear ?obj) (ontable ?obj) (handempty))
  :effect (and (holding ?obj) (not (clear ?obj)) (not (ontable ?obj)) (not (handempty)) (when (and (not (on green_block_3 green_block_2)) (not (or (not (and (ontable orange_block_1) (not (= ?obj orange_block_1)))) (= ?obj orange_block_1) (holding orange_block_1)))) (not (hold_1))) (when (or (not (and (ontable orange_block_1) (not (= ?obj orange_block_1)))) (= ?obj orange_block_1) (holding orange_block_1)) (hold_1)) (when (or (= ?obj green_block_4) (holding green_block_4) (= ?obj yellow_block_2) (holding yellow_block_2)) (hold_2))))
 (:action putdown
  :parameters ( ?obj - block)
  :precondition (and (holding ?obj))
  :effect (and (clear ?obj) (handempty) (ontable ?obj) (not (holding ?obj)) (when (and (not (on green_block_3 green_block_2)) (not (or (not (or (= ?obj orange_block_1) (ontable orange_block_1))) (and (holding orange_block_1) (not (= ?obj orange_block_1)))))) (not (hold_1))) (when (or (not (or (= ?obj orange_block_1) (ontable orange_block_1))) (and (holding orange_block_1) (not (= ?obj orange_block_1)))) (hold_1)) (when (or (and (holding green_block_4) (not (= ?obj green_block_4))) (and (holding yellow_block_2) (not (= ?obj yellow_block_2)))) (hold_2))))
 (:action stack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (clear ?underobj) (holding ?obj))
  :effect (and (handempty) (clear ?obj) (on ?obj ?underobj) (not (clear ?underobj)) (not (holding ?obj)) (when (not (or (and (= ?obj green_block_3) (= ?underobj green_block_2)) (on green_block_3 green_block_2))) (hold_0)) (when (and (not (or (and (= ?obj green_block_3) (= ?underobj green_block_2)) (on green_block_3 green_block_2))) (not (or (not (ontable orange_block_1)) (and (holding orange_block_1) (not (= ?obj orange_block_1)))))) (not (hold_1))) (when (or (not (ontable orange_block_1)) (and (holding orange_block_1) (not (= ?obj orange_block_1)))) (hold_1)) (when (or (and (holding green_block_4) (not (= ?obj green_block_4))) (and (holding yellow_block_2) (not (= ?obj yellow_block_2)))) (hold_2))))
 (:action unstack
  :parameters ( ?obj - block ?underobj - block)
  :precondition (and (on ?obj ?underobj) (clear ?obj) (handempty))
  :effect (and (holding ?obj) (clear ?underobj) (not (on ?obj ?underobj)) (not (clear ?obj)) (not (handempty)) (when (not (and (on green_block_3 green_block_2) (not (and (= ?obj green_block_3) (= ?underobj green_block_2))))) (hold_0)) (when (and (not (and (on green_block_3 green_block_2) (not (and (= ?obj green_block_3) (= ?underobj green_block_2))))) (not (or (not (ontable orange_block_1)) (= ?obj orange_block_1) (holding orange_block_1)))) (not (hold_1))) (when (or (not (ontable orange_block_1)) (= ?obj orange_block_1) (holding orange_block_1)) (hold_1)) (when (or (= ?obj green_block_4) (holding green_block_4) (= ?obj yellow_block_2) (holding yellow_block_2)) (hold_2))))
)
