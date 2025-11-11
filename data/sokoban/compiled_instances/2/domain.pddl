(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   pos1_1 pos2_3 pos5_3 - location
   stone1 - stone
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (hold_0))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d) (or (= ?l_from pos2_3) (and (clear pos2_3) (not (= ?l_to pos2_3)))))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (and (at_ stone1 pos5_3) (not (or (= ?l_from pos1_1) (and (clear pos1_1) (not (= ?l_to pos1_1)))))) (hold_0))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to) (or (= ?l_p pos2_3) (and (clear pos2_3) (not (= ?l_to pos2_3)))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (and (or (and (= ?s stone1) (= ?l_to pos5_3)) (and (at_ stone1 pos5_3) (not (and (= ?s stone1) (= ?l_from pos5_3))))) (not (or (= ?l_p pos1_1) (and (clear pos1_1) (not (= ?l_to pos1_1)))))) (hold_0))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to) (or (= ?l_p pos2_3) (and (clear pos2_3) (not (= ?l_to pos2_3)))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (and (or (and (= ?s stone1) (= ?l_to pos5_3)) (and (at_ stone1 pos5_3) (not (and (= ?s stone1) (= ?l_from pos5_3))))) (not (or (= ?l_p pos1_1) (and (clear pos1_1) (not (= ?l_to pos1_1)))))) (hold_0))))
)
