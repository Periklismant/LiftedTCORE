(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   pos7_5 pos5_4 pos2_1 pos5_3 - location
   player1 - person
   stone1 - stone
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (hold_0) (hold_1) (seen_psi_2))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (or (not (or (= ?l_from pos5_4) (and (clear pos5_4) (not (= ?l_to pos5_4))))) (and (= ?p player1) (= ?l_to pos5_3)) (and (at_ player1 pos5_3) (not (and (= ?p player1) (= ?l_from pos5_3))))) (hold_0)) (when (or (and (= ?p player1) (= ?l_to pos7_5)) (and (at_ player1 pos7_5) (not (and (= ?p player1) (= ?l_from pos7_5))))) (seen_psi_2))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to) (or (not (or (and (= ?s stone1) (= ?l_to pos2_1)) (and (at_ stone1 pos2_1) (not (and (= ?s stone1) (= ?l_from pos2_1)))))) (seen_psi_2)))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (or (not (or (= ?l_p pos5_4) (and (clear pos5_4) (not (= ?l_to pos5_4))))) (and (= ?p player1) (= ?l_from pos5_3)) (and (at_ player1 pos5_3) (not (and (= ?p player1) (= ?l_p pos5_3))))) (hold_0)) (when (or (and (= ?s stone1) (= ?l_to pos2_1)) (and (at_ stone1 pos2_1) (not (and (= ?s stone1) (= ?l_from pos2_1))))) (hold_1)) (when (or (and (= ?p player1) (= ?l_from pos7_5)) (and (at_ player1 pos7_5) (not (and (= ?p player1) (= ?l_p pos7_5))))) (seen_psi_2))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to) (or (not (or (and (= ?s stone1) (= ?l_to pos2_1)) (and (at_ stone1 pos2_1) (not (and (= ?s stone1) (= ?l_from pos2_1)))))) (seen_psi_2)))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (or (not (or (= ?l_p pos5_4) (and (clear pos5_4) (not (= ?l_to pos5_4))))) (and (= ?p player1) (= ?l_from pos5_3)) (and (at_ player1 pos5_3) (not (and (= ?p player1) (= ?l_p pos5_3))))) (hold_0)) (when (or (and (= ?s stone1) (= ?l_to pos2_1)) (and (at_ stone1 pos2_1) (not (and (= ?s stone1) (= ?l_from pos2_1))))) (hold_1)) (when (or (and (= ?p player1) (= ?l_from pos7_5)) (and (at_ player1 pos7_5) (not (and (= ?p player1) (= ?l_p pos7_5))))) (seen_psi_2))))
)
