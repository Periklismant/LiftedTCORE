(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   stone1 - stone
   pos6_2 pos1_5 pos2_2 - location
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (hold_0) (hold_1))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (or (at_ stone1 pos1_5) (not (or (= ?l_from pos2_2) (and (clear pos2_2) (not (= ?l_to pos2_2)))))) (hold_1))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (or (and (= ?s stone1) (= ?l_to pos6_2)) (and (at_ stone1 pos6_2) (not (and (= ?s stone1) (= ?l_from pos6_2))))) (hold_0)) (when (or (and (= ?s stone1) (= ?l_to pos1_5)) (and (at_ stone1 pos1_5) (not (and (= ?s stone1) (= ?l_from pos1_5)))) (not (or (= ?l_p pos2_2) (and (clear pos2_2) (not (= ?l_to pos2_2)))))) (hold_1))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (or (and (= ?s stone1) (= ?l_to pos6_2)) (and (at_ stone1 pos6_2) (not (and (= ?s stone1) (= ?l_from pos6_2))))) (hold_0)) (when (or (and (= ?s stone1) (= ?l_to pos1_5)) (and (at_ stone1 pos1_5) (not (and (= ?s stone1) (= ?l_from pos1_5)))) (not (or (= ?l_p pos2_2) (and (clear pos2_2) (not (= ?l_to pos2_2)))))) (hold_1))))
)
