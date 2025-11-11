(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   player1 - person
   pos7_8 pos6_7 - location
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (hold_0) (hold_1))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (or (and (= ?p player1) (= ?l_to pos7_8)) (and (at_ player1 pos7_8) (not (and (= ?p player1) (= ?l_from pos7_8))))) (hold_0)) (when (not (or (= ?l_from pos6_7) (and (clear pos6_7) (not (= ?l_to pos6_7))))) (hold_1))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (or (and (= ?p player1) (= ?l_from pos7_8)) (and (at_ player1 pos7_8) (not (and (= ?p player1) (= ?l_p pos7_8))))) (hold_0)) (when (not (or (= ?l_p pos6_7) (and (clear pos6_7) (not (= ?l_to pos6_7))))) (hold_1))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (or (and (= ?p player1) (= ?l_from pos7_8)) (and (at_ player1 pos7_8) (not (and (= ?p player1) (= ?l_p pos7_8))))) (hold_0)) (when (not (or (= ?l_p pos6_7) (and (clear pos6_7) (not (= ?l_to pos6_7))))) (hold_1))))
)
