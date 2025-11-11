(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   pos4_1 pos8_2 pos5_7 - location
   stone1 - stone
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (seen_phi_0) (hold_1) (hold_2))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d) (or (= ?l_from pos5_7) (and (clear pos5_7) (not (= ?l_to pos5_7))) (not (seen_phi_0)) (not (clear pos5_7))))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (not (or (= ?l_from pos5_7) (and (clear pos5_7) (not (= ?l_to pos5_7))))) (seen_phi_0)) (when (and (at_ stone1 pos8_2) (or (= ?l_from pos4_1) (and (clear pos4_1) (not (= ?l_to pos4_1))))) (not (hold_2))) (when (not (or (= ?l_from pos4_1) (and (clear pos4_1) (not (= ?l_to pos4_1))))) (hold_2))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to) (or (= ?l_p pos5_7) (and (clear pos5_7) (not (= ?l_to pos5_7))) (not (seen_phi_0)) (not (clear pos5_7))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (not (or (= ?l_p pos5_7) (and (clear pos5_7) (not (= ?l_to pos5_7))))) (seen_phi_0)) (when (or (and (= ?s stone1) (= ?l_to pos8_2)) (and (at_ stone1 pos8_2) (not (and (= ?s stone1) (= ?l_from pos8_2))))) (hold_1)) (when (and (or (and (= ?s stone1) (= ?l_to pos8_2)) (and (at_ stone1 pos8_2) (not (and (= ?s stone1) (= ?l_from pos8_2))))) (or (= ?l_p pos4_1) (and (clear pos4_1) (not (= ?l_to pos4_1))))) (not (hold_2))) (when (not (or (= ?l_p pos4_1) (and (clear pos4_1) (not (= ?l_to pos4_1))))) (hold_2))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to) (or (= ?l_p pos5_7) (and (clear pos5_7) (not (= ?l_to pos5_7))) (not (seen_phi_0)) (not (clear pos5_7))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (not (or (= ?l_p pos5_7) (and (clear pos5_7) (not (= ?l_to pos5_7))))) (seen_phi_0)) (when (or (and (= ?s stone1) (= ?l_to pos8_2)) (and (at_ stone1 pos8_2) (not (and (= ?s stone1) (= ?l_from pos8_2))))) (hold_1)) (when (and (or (and (= ?s stone1) (= ?l_to pos8_2)) (and (at_ stone1 pos8_2) (not (and (= ?s stone1) (= ?l_from pos8_2))))) (or (= ?l_p pos4_1) (and (clear pos4_1) (not (= ?l_to pos4_1))))) (not (hold_2))) (when (not (or (= ?l_p pos4_1) (and (clear pos4_1) (not (= ?l_to pos4_1))))) (hold_2))))
)
