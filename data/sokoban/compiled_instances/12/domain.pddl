(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   pos7_1 pos4_9 pos8_8 - location
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (hold_0) (seen_phi_1))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d) (or (= ?l_from pos4_9) (and (clear pos4_9) (not (= ?l_to pos4_9))) (not (seen_phi_1)) (not (clear pos4_9))))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (or (not (or (= ?l_from pos8_8) (and (clear pos8_8) (not (= ?l_to pos8_8))))) (not (or (= ?l_from pos7_1) (and (clear pos7_1) (not (= ?l_to pos7_1)))))) (hold_0)) (when (not (or (= ?l_from pos4_9) (and (clear pos4_9) (not (= ?l_to pos4_9))))) (seen_phi_1))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to) (or (= ?l_p pos4_9) (and (clear pos4_9) (not (= ?l_to pos4_9))) (not (seen_phi_1)) (not (clear pos4_9))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (or (not (or (= ?l_p pos8_8) (and (clear pos8_8) (not (= ?l_to pos8_8))))) (not (or (= ?l_p pos7_1) (and (clear pos7_1) (not (= ?l_to pos7_1)))))) (hold_0)) (when (not (or (= ?l_p pos4_9) (and (clear pos4_9) (not (= ?l_to pos4_9))))) (seen_phi_1))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to) (or (= ?l_p pos4_9) (and (clear pos4_9) (not (= ?l_to pos4_9))) (not (seen_phi_1)) (not (clear pos4_9))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (or (not (or (= ?l_p pos8_8) (and (clear pos8_8) (not (= ?l_to pos8_8))))) (not (or (= ?l_p pos7_1) (and (clear pos7_1) (not (= ?l_to pos7_1)))))) (hold_0)) (when (not (or (= ?l_p pos4_9) (and (clear pos4_9) (not (= ?l_to pos4_9))))) (seen_phi_1))))
)
