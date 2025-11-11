(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   player1 - person
   pos7_2 pos7_7 pos3_9 - location
   stone1 - stone
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (hold_0))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d) (not (or (and (= ?p player1) (= ?l_to pos7_2)) (and (at_ player1 pos7_2) (not (and (= ?p player1) (= ?l_from pos7_2)))))))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (or (and (= ?p player1) (= ?l_to pos7_7)) (and (at_ player1 pos7_7) (not (and (= ?p player1) (= ?l_from pos7_7)))) (at_ stone1 pos3_9)) (hold_0))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to) (not (or (and (= ?p player1) (= ?l_from pos7_2)) (and (at_ player1 pos7_2) (not (and (= ?p player1) (= ?l_p pos7_2)))))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (or (and (= ?p player1) (= ?l_from pos7_7)) (and (at_ player1 pos7_7) (not (and (= ?p player1) (= ?l_p pos7_7)))) (and (= ?s stone1) (= ?l_to pos3_9)) (and (at_ stone1 pos3_9) (not (and (= ?s stone1) (= ?l_from pos3_9))))) (hold_0))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to) (not (or (and (= ?p player1) (= ?l_from pos7_2)) (and (at_ player1 pos7_2) (not (and (= ?p player1) (= ?l_p pos7_2)))))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (or (and (= ?p player1) (= ?l_from pos7_7)) (and (at_ player1 pos7_7) (not (and (= ?p player1) (= ?l_p pos7_7)))) (and (= ?s stone1) (= ?l_to pos3_9)) (and (at_ stone1 pos3_9) (not (and (= ?s stone1) (= ?l_from pos3_9))))) (hold_0))))
)
