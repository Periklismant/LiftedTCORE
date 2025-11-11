(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   pos5_7 pos9_3 pos1_3 - location
   stone1 - stone
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (hold_0) (hold_1) (seen_psi_2))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d) (or (= ?l_from pos9_3) (and (clear pos9_3) (not (= ?l_to pos9_3))) (seen_psi_2)))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (not (or (= ?l_from pos1_3) (and (clear pos1_3) (not (= ?l_to pos1_3))))) (hold_0)) (when (not (or (= ?l_from pos9_3) (and (clear pos9_3) (not (= ?l_to pos9_3))))) (hold_1))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to) (or (= ?l_p pos9_3) (and (clear pos9_3) (not (= ?l_to pos9_3))) (seen_psi_2)))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (not (or (= ?l_p pos1_3) (and (clear pos1_3) (not (= ?l_to pos1_3))))) (hold_0)) (when (not (or (= ?l_p pos9_3) (and (clear pos9_3) (not (= ?l_to pos9_3))))) (hold_1)) (when (or (and (= ?s stone1) (= ?l_to pos5_7)) (and (at_ stone1 pos5_7) (not (and (= ?s stone1) (= ?l_from pos5_7))))) (seen_psi_2))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to) (or (= ?l_p pos9_3) (and (clear pos9_3) (not (= ?l_to pos9_3))) (seen_psi_2)))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (not (or (= ?l_p pos1_3) (and (clear pos1_3) (not (= ?l_to pos1_3))))) (hold_0)) (when (not (or (= ?l_p pos9_3) (and (clear pos9_3) (not (= ?l_to pos9_3))))) (hold_1)) (when (or (and (= ?s stone1) (= ?l_to pos5_7)) (and (at_ stone1 pos5_7) (not (and (= ?s stone1) (= ?l_from pos5_7))))) (seen_psi_2))))
)
