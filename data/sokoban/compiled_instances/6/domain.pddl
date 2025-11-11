(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   player1 - person
   pos4_6 pos6_3 - location
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (hold_0))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d) (not (or (and (= ?p player1) (= ?l_to pos6_3)) (and (at_ player1 pos6_3) (not (and (= ?p player1) (= ?l_from pos6_3)))))))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (or (and (= ?p player1) (= ?l_to pos4_6)) (and (at_ player1 pos4_6) (not (and (= ?p player1) (= ?l_from pos4_6))))) (hold_0))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to) (not (or (and (= ?p player1) (= ?l_from pos6_3)) (and (at_ player1 pos6_3) (not (and (= ?p player1) (= ?l_p pos6_3)))))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (or (and (= ?p player1) (= ?l_from pos4_6)) (and (at_ player1 pos4_6) (not (and (= ?p player1) (= ?l_p pos4_6))))) (hold_0))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to) (not (or (and (= ?p player1) (= ?l_from pos6_3)) (and (at_ player1 pos6_3) (not (and (= ?p player1) (= ?l_p pos6_3)))))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (or (and (= ?p player1) (= ?l_from pos4_6)) (and (at_ player1 pos4_6) (not (and (= ?p player1) (= ?l_p pos4_6))))) (hold_0))))
)
