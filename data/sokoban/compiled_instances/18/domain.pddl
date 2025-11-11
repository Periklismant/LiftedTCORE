(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   pos2_4 pos3_4 pos10_5 - location
   stone2 stone1 - stone
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (seen_psi_0))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d) (or (= ?l_from pos3_4) (and (clear pos3_4) (not (= ?l_to pos3_4))) (seen_psi_0)))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from)))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to) (or (= ?l_p pos3_4) (and (clear pos3_4) (not (= ?l_to pos3_4))) (seen_psi_0)))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (or (and (= ?s stone2) (= ?l_to pos2_4)) (and (at_ stone2 pos2_4) (not (and (= ?s stone2) (= ?l_from pos2_4)))) (and (= ?s stone1) (= ?l_to pos10_5)) (and (at_ stone1 pos10_5) (not (and (= ?s stone1) (= ?l_from pos10_5))))) (seen_psi_0))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to) (or (= ?l_p pos3_4) (and (clear pos3_4) (not (= ?l_to pos3_4))) (seen_psi_0)))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (or (and (= ?s stone2) (= ?l_to pos2_4)) (and (at_ stone2 pos2_4) (not (and (= ?s stone2) (= ?l_from pos2_4)))) (and (= ?s stone1) (= ?l_to pos10_5)) (and (at_ stone1 pos10_5) (not (and (= ?s stone1) (= ?l_from pos10_5))))) (seen_psi_0))))
)
