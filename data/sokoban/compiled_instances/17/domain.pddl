(define (domain liftedtcore_sokoban_problem-domain)
 (:types
    location direction thing - object
    person stone - thing
 )
 (:constants
   pos2_7 pos5_10 pos3_5 pos4_2 pos2_9 - location
   stone1 - stone
 )
 (:predicates (movedir ?l_from - location ?l_to - location ?d - direction) (isnongoal ?l - location) (isgoal ?l - location) (clear ?l - location) (at_ ?t - thing ?l - location) (atgoal ?t - thing) (hold_0) (hold_1) (hold_2))
 (:action move
  :parameters ( ?p - person ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_from) (clear ?l_to) (movedir ?l_from ?l_to ?d))
  :effect (and (not (at_ ?p ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_to) (clear ?l_from) (when (and (not (or (= ?l_from pos3_5) (and (clear pos3_5) (not (= ?l_to pos3_5))))) (not (or (= ?l_from pos4_2) (and (clear pos4_2) (not (= ?l_to pos4_2)))))) (hold_0)) (when (and (at_ stone1 pos2_7) (not (or (not (or (= ?l_from pos5_10) (and (clear pos5_10) (not (= ?l_to pos5_10))))) (at_ stone1 pos2_9)))) (not (hold_2))) (when (or (not (or (= ?l_from pos5_10) (and (clear pos5_10) (not (= ?l_to pos5_10))))) (at_ stone1 pos2_9)) (hold_2))))
 (:action pushtogoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isgoal ?l_to))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (atgoal ?s) (when (and (not (or (= ?l_p pos3_5) (and (clear pos3_5) (not (= ?l_to pos3_5))))) (not (or (= ?l_p pos4_2) (and (clear pos4_2) (not (= ?l_to pos4_2)))))) (hold_0)) (when (or (and (= ?s stone1) (= ?l_to pos2_7)) (and (at_ stone1 pos2_7) (not (and (= ?s stone1) (= ?l_from pos2_7))))) (hold_1)) (when (and (or (and (= ?s stone1) (= ?l_to pos2_7)) (and (at_ stone1 pos2_7) (not (and (= ?s stone1) (= ?l_from pos2_7))))) (not (or (not (or (= ?l_p pos5_10) (and (clear pos5_10) (not (= ?l_to pos5_10))))) (and (= ?s stone1) (= ?l_to pos2_9)) (and (at_ stone1 pos2_9) (not (and (= ?s stone1) (= ?l_from pos2_9))))))) (not (hold_2))) (when (or (not (or (= ?l_p pos5_10) (and (clear pos5_10) (not (= ?l_to pos5_10))))) (and (= ?s stone1) (= ?l_to pos2_9)) (and (at_ stone1 pos2_9) (not (and (= ?s stone1) (= ?l_from pos2_9))))) (hold_2))))
 (:action pushtonongoal
  :parameters ( ?p - person ?s - stone ?l_p - location ?l_from - location ?l_to - location ?d - direction)
  :precondition (and (at_ ?p ?l_p) (at_ ?s ?l_from) (clear ?l_to) (movedir ?l_p ?l_from ?d) (movedir ?l_from ?l_to ?d) (isnongoal ?l_to))
  :effect (and (not (at_ ?p ?l_p)) (not (at_ ?s ?l_from)) (not (clear ?l_to)) (at_ ?p ?l_from) (at_ ?s ?l_to) (clear ?l_p) (not (atgoal ?s)) (when (and (not (or (= ?l_p pos3_5) (and (clear pos3_5) (not (= ?l_to pos3_5))))) (not (or (= ?l_p pos4_2) (and (clear pos4_2) (not (= ?l_to pos4_2)))))) (hold_0)) (when (or (and (= ?s stone1) (= ?l_to pos2_7)) (and (at_ stone1 pos2_7) (not (and (= ?s stone1) (= ?l_from pos2_7))))) (hold_1)) (when (and (or (and (= ?s stone1) (= ?l_to pos2_7)) (and (at_ stone1 pos2_7) (not (and (= ?s stone1) (= ?l_from pos2_7))))) (not (or (not (or (= ?l_p pos5_10) (and (clear pos5_10) (not (= ?l_to pos5_10))))) (and (= ?s stone1) (= ?l_to pos2_9)) (and (at_ stone1 pos2_9) (not (and (= ?s stone1) (= ?l_from pos2_9))))))) (not (hold_2))) (when (or (not (or (= ?l_p pos5_10) (and (clear pos5_10) (not (= ?l_to pos5_10))))) (and (= ?s stone1) (= ?l_to pos2_9)) (and (at_ stone1 pos2_9) (not (and (= ?s stone1) (= ?l_from pos2_9))))) (hold_2))))
)
