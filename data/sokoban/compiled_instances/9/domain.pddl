(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   pos4_5 pos6_5 pos2_5 pos3_6 - location
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (seen_phi_0) (hold_1) (hold_2))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d) (or (= ?l_from pos2_5) (and (clear pos2_5) (not (= ?l_to pos2_5))) (not (seen_phi_0)) (not (clear pos2_5))))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (not (or (= ?l_from pos2_5) (and (clear pos2_5) (not (= ?l_to pos2_5))))) (seen_phi_0)) (when (not (or (= ?l_from pos3_6) (and (clear pos3_6) (not (= ?l_to pos3_6))))) (hold_1)) (when (and (not (or (= ?l_from pos3_6) (and (clear pos3_6) (not (= ?l_to pos3_6))))) (not (or (not (or (= ?l_from pos6_5) (and (clear pos6_5) (not (= ?l_to pos6_5))))) (not (or (= ?l_from pos4_5) (and (clear pos4_5) (not (= ?l_to pos4_5)))))))) (not (hold_2))) (when (or (not (or (= ?l_from pos6_5) (and (clear pos6_5) (not (= ?l_to pos6_5))))) (not (or (= ?l_from pos4_5) (and (clear pos4_5) (not (= ?l_to pos4_5)))))) (hold_2))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to) (or (= ?l_p pos2_5) (and (clear pos2_5) (not (= ?l_to pos2_5))) (not (seen_phi_0)) (not (clear pos2_5))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (not (or (= ?l_p pos2_5) (and (clear pos2_5) (not (= ?l_to pos2_5))))) (seen_phi_0)) (when (not (or (= ?l_p pos3_6) (and (clear pos3_6) (not (= ?l_to pos3_6))))) (hold_1)) (when (and (not (or (= ?l_p pos3_6) (and (clear pos3_6) (not (= ?l_to pos3_6))))) (not (or (not (or (= ?l_p pos6_5) (and (clear pos6_5) (not (= ?l_to pos6_5))))) (not (or (= ?l_p pos4_5) (and (clear pos4_5) (not (= ?l_to pos4_5)))))))) (not (hold_2))) (when (or (not (or (= ?l_p pos6_5) (and (clear pos6_5) (not (= ?l_to pos6_5))))) (not (or (= ?l_p pos4_5) (and (clear pos4_5) (not (= ?l_to pos4_5)))))) (hold_2))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to) (or (= ?l_p pos2_5) (and (clear pos2_5) (not (= ?l_to pos2_5))) (not (seen_phi_0)) (not (clear pos2_5))))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (not (or (= ?l_p pos2_5) (and (clear pos2_5) (not (= ?l_to pos2_5))))) (seen_phi_0)) (when (not (or (= ?l_p pos3_6) (and (clear pos3_6) (not (= ?l_to pos3_6))))) (hold_1)) (when (and (not (or (= ?l_p pos3_6) (and (clear pos3_6) (not (= ?l_to pos3_6))))) (not (or (not (or (= ?l_p pos6_5) (and (clear pos6_5) (not (= ?l_to pos6_5))))) (not (or (= ?l_p pos4_5) (and (clear pos4_5) (not (= ?l_to pos4_5)))))))) (not (hold_2))) (when (or (not (or (= ?l_p pos6_5) (and (clear pos6_5) (not (= ?l_to pos6_5))))) (not (or (= ?l_p pos4_5) (and (clear pos4_5) (not (= ?l_to pos4_5)))))) (hold_2))))
)
