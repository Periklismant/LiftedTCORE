(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   stone2 stone1 - stone
   pos3_2 - location
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (hold_0) (seen_psi_1))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from)))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to) (or (not (or (and (= ?s stone1) (= ?l_to pos3_2)) (and (at_ stone1 pos3_2) (not (and (= ?s stone1) (= ?l_from pos3_2)))))) (seen_psi_1)))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (or (and (= ?s stone1) (= ?l_to pos3_2)) (and (at_ stone1 pos3_2) (not (and (= ?s stone1) (= ?l_from pos3_2))))) (hold_0)) (when (or (= ?s stone2) (atgoal stone2)) (seen_psi_1))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to) (or (not (or (and (= ?s stone1) (= ?l_to pos3_2)) (and (at_ stone1 pos3_2) (not (and (= ?s stone1) (= ?l_from pos3_2)))))) (seen_psi_1)))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (or (and (= ?s stone1) (= ?l_to pos3_2)) (and (at_ stone1 pos3_2) (not (and (= ?s stone1) (= ?l_from pos3_2))))) (hold_0)) (when (and (atgoal stone2) (not (= ?s stone2))) (seen_psi_1))))
)
