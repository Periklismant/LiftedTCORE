(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   player1 - person
   pos1_4 pos2_6 pos2_9 pos7_4 - location
   stone2 - stone
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (hold_0) (hold_1) (seen_phi_2))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d) (or (not (or (and (= ?p player1) (= ?l_to pos2_6)) (and (at_ player1 pos2_6) (not (and (= ?p player1) (= ?l_from pos2_6)))))) (not (seen_phi_2)) (at_ player1 pos2_6)))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (not (or (= ?l_from pos2_9) (and (clear pos2_9) (not (= ?l_to pos2_9))))) (hold_0)) (when (and (not (or (= ?l_from pos2_9) (and (clear pos2_9) (not (= ?l_to pos2_9))))) (not (or (at_ stone2 pos7_4) (at_ stone2 pos1_4)))) (not (hold_1))) (when (or (and (= ?p player1) (= ?l_to pos2_6)) (and (at_ player1 pos2_6) (not (and (= ?p player1) (= ?l_from pos2_6))))) (seen_phi_2))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to) (or (not (or (and (= ?p player1) (= ?l_from pos2_6)) (and (at_ player1 pos2_6) (not (and (= ?p player1) (= ?l_p pos2_6)))))) (not (seen_phi_2)) (at_ player1 pos2_6)))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (not (or (= ?l_p pos2_9) (and (clear pos2_9) (not (= ?l_to pos2_9))))) (hold_0)) (when (and (not (or (= ?l_p pos2_9) (and (clear pos2_9) (not (= ?l_to pos2_9))))) (not (or (and (= ?s stone2) (= ?l_to pos7_4)) (and (at_ stone2 pos7_4) (not (and (= ?s stone2) (= ?l_from pos7_4)))) (and (= ?s stone2) (= ?l_to pos1_4)) (and (at_ stone2 pos1_4) (not (and (= ?s stone2) (= ?l_from pos1_4))))))) (not (hold_1))) (when (or (and (= ?s stone2) (= ?l_to pos7_4)) (and (at_ stone2 pos7_4) (not (and (= ?s stone2) (= ?l_from pos7_4)))) (and (= ?s stone2) (= ?l_to pos1_4)) (and (at_ stone2 pos1_4) (not (and (= ?s stone2) (= ?l_from pos1_4))))) (hold_1)) (when (or (and (= ?p player1) (= ?l_from pos2_6)) (and (at_ player1 pos2_6) (not (and (= ?p player1) (= ?l_p pos2_6))))) (seen_phi_2))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to) (or (not (or (and (= ?p player1) (= ?l_from pos2_6)) (and (at_ player1 pos2_6) (not (and (= ?p player1) (= ?l_p pos2_6)))))) (not (seen_phi_2)) (at_ player1 pos2_6)))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (not (or (= ?l_p pos2_9) (and (clear pos2_9) (not (= ?l_to pos2_9))))) (hold_0)) (when (and (not (or (= ?l_p pos2_9) (and (clear pos2_9) (not (= ?l_to pos2_9))))) (not (or (and (= ?s stone2) (= ?l_to pos7_4)) (and (at_ stone2 pos7_4) (not (and (= ?s stone2) (= ?l_from pos7_4)))) (and (= ?s stone2) (= ?l_to pos1_4)) (and (at_ stone2 pos1_4) (not (and (= ?s stone2) (= ?l_from pos1_4))))))) (not (hold_1))) (when (or (and (= ?s stone2) (= ?l_to pos7_4)) (and (at_ stone2 pos7_4) (not (and (= ?s stone2) (= ?l_from pos7_4)))) (and (= ?s stone2) (= ?l_to pos1_4)) (and (at_ stone2 pos1_4) (not (and (= ?s stone2) (= ?l_from pos1_4))))) (hold_1)) (when (or (and (= ?p player1) (= ?l_from pos2_6)) (and (at_ player1 pos2_6) (not (and (= ?p player1) (= ?l_p pos2_6))))) (seen_phi_2))))
)
