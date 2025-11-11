(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   pos2_2 pos3_3 pos6_6 - location
   player1 - person
   stone1 - stone
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (hold_0) (hold_1) (seen_phi_2))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d) (or (= ?l_from pos3_3) (and (clear pos3_3) (not (= ?l_to pos3_3))) (not (seen_phi_2)) (not (clear pos3_3))))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (or (and (= ?p player1) (= ?l_to pos3_3)) (and (at_ player1 pos3_3) (not (and (= ?p player1) (= ?l_from pos3_3))))) (hold_0)) (when (and (or (and (= ?p player1) (= ?l_to pos3_3)) (and (at_ player1 pos3_3) (not (and (= ?p player1) (= ?l_from pos3_3))))) (not (or (at_ stone1 pos6_6) (at_ stone1 pos2_2)))) (not (hold_1))) (when (not (or (= ?l_from pos3_3) (and (clear pos3_3) (not (= ?l_to pos3_3))))) (seen_phi_2))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to) (or (= ?l_p pos3_3) (and (clear pos3_3) (not (= ?l_to pos3_3))) (not (seen_phi_2)) (not (clear pos3_3))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (or (and (= ?p player1) (= ?l_from pos3_3)) (and (at_ player1 pos3_3) (not (and (= ?p player1) (= ?l_p pos3_3))))) (hold_0)) (when (and (or (and (= ?p player1) (= ?l_from pos3_3)) (and (at_ player1 pos3_3) (not (and (= ?p player1) (= ?l_p pos3_3))))) (not (or (and (= ?s stone1) (= ?l_to pos6_6)) (and (at_ stone1 pos6_6) (not (and (= ?s stone1) (= ?l_from pos6_6)))) (and (= ?s stone1) (= ?l_to pos2_2)) (and (at_ stone1 pos2_2) (not (and (= ?s stone1) (= ?l_from pos2_2))))))) (not (hold_1))) (when (or (and (= ?s stone1) (= ?l_to pos6_6)) (and (at_ stone1 pos6_6) (not (and (= ?s stone1) (= ?l_from pos6_6)))) (and (= ?s stone1) (= ?l_to pos2_2)) (and (at_ stone1 pos2_2) (not (and (= ?s stone1) (= ?l_from pos2_2))))) (hold_1)) (when (not (or (= ?l_p pos3_3) (and (clear pos3_3) (not (= ?l_to pos3_3))))) (seen_phi_2))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to) (or (= ?l_p pos3_3) (and (clear pos3_3) (not (= ?l_to pos3_3))) (not (seen_phi_2)) (not (clear pos3_3))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (or (and (= ?p player1) (= ?l_from pos3_3)) (and (at_ player1 pos3_3) (not (and (= ?p player1) (= ?l_p pos3_3))))) (hold_0)) (when (and (or (and (= ?p player1) (= ?l_from pos3_3)) (and (at_ player1 pos3_3) (not (and (= ?p player1) (= ?l_p pos3_3))))) (not (or (and (= ?s stone1) (= ?l_to pos6_6)) (and (at_ stone1 pos6_6) (not (and (= ?s stone1) (= ?l_from pos6_6)))) (and (= ?s stone1) (= ?l_to pos2_2)) (and (at_ stone1 pos2_2) (not (and (= ?s stone1) (= ?l_from pos2_2))))))) (not (hold_1))) (when (or (and (= ?s stone1) (= ?l_to pos6_6)) (and (at_ stone1 pos6_6) (not (and (= ?s stone1) (= ?l_from pos6_6)))) (and (= ?s stone1) (= ?l_to pos2_2)) (and (at_ stone1 pos2_2) (not (and (= ?s stone1) (= ?l_from pos2_2))))) (hold_1)) (when (not (or (= ?l_p pos3_3) (and (clear pos3_3) (not (= ?l_to pos3_3))))) (seen_phi_2))))
)
