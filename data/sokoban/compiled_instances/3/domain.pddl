(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   pos2_7 pos4_4 pos2_4 pos3_4 pos4_3 - location
   player1 - person
   stone1 - stone
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (hold_0) (seen_psi_1) (hold_2) (seen_psi_3))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d) (or (= ?l_from pos4_4) (and (clear pos4_4) (not (= ?l_to pos4_4))) (seen_psi_1)) (or (not (or (and (= ?p player1) (= ?l_to pos2_4)) (and (at_ player1 pos2_4) (not (and (= ?p player1) (= ?l_from pos2_4)))))) (seen_psi_3)))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (not (or (= ?l_from pos4_4) (and (clear pos4_4) (not (= ?l_to pos4_4))))) (hold_0)) (when (or (not (or (= ?l_from pos4_3) (and (clear pos4_3) (not (= ?l_to pos4_3))))) (at_ stone1 pos3_4)) (seen_psi_1)) (when (or (and (= ?p player1) (= ?l_to pos2_4)) (and (at_ player1 pos2_4) (not (and (= ?p player1) (= ?l_from pos2_4))))) (hold_2)) (when (or (and (= ?p player1) (= ?l_to pos2_7)) (and (at_ player1 pos2_7) (not (and (= ?p player1) (= ?l_from pos2_7))))) (seen_psi_3))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to) (or (= ?l_p pos4_4) (and (clear pos4_4) (not (= ?l_to pos4_4))) (seen_psi_1)) (or (not (or (and (= ?p player1) (= ?l_from pos2_4)) (and (at_ player1 pos2_4) (not (and (= ?p player1) (= ?l_p pos2_4)))))) (seen_psi_3)))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (not (or (= ?l_p pos4_4) (and (clear pos4_4) (not (= ?l_to pos4_4))))) (hold_0)) (when (or (not (or (= ?l_p pos4_3) (and (clear pos4_3) (not (= ?l_to pos4_3))))) (and (= ?s stone1) (= ?l_to pos3_4)) (and (at_ stone1 pos3_4) (not (and (= ?s stone1) (= ?l_from pos3_4))))) (seen_psi_1)) (when (or (and (= ?p player1) (= ?l_from pos2_4)) (and (at_ player1 pos2_4) (not (and (= ?p player1) (= ?l_p pos2_4))))) (hold_2)) (when (or (and (= ?p player1) (= ?l_from pos2_7)) (and (at_ player1 pos2_7) (not (and (= ?p player1) (= ?l_p pos2_7))))) (seen_psi_3))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to) (or (= ?l_p pos4_4) (and (clear pos4_4) (not (= ?l_to pos4_4))) (seen_psi_1)) (or (not (or (and (= ?p player1) (= ?l_from pos2_4)) (and (at_ player1 pos2_4) (not (and (= ?p player1) (= ?l_p pos2_4)))))) (seen_psi_3)))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (not (or (= ?l_p pos4_4) (and (clear pos4_4) (not (= ?l_to pos4_4))))) (hold_0)) (when (or (not (or (= ?l_p pos4_3) (and (clear pos4_3) (not (= ?l_to pos4_3))))) (and (= ?s stone1) (= ?l_to pos3_4)) (and (at_ stone1 pos3_4) (not (and (= ?s stone1) (= ?l_from pos3_4))))) (seen_psi_1)) (when (or (and (= ?p player1) (= ?l_from pos2_4)) (and (at_ player1 pos2_4) (not (and (= ?p player1) (= ?l_p pos2_4))))) (hold_2)) (when (or (and (= ?p player1) (= ?l_from pos2_7)) (and (at_ player1 pos2_7) (not (and (= ?p player1) (= ?l_p pos2_7))))) (seen_psi_3))))
)
