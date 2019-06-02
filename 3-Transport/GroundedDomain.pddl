(define (domain transport)
(:requirements :typing :durative-actions :numeric-fluents :fluents :preferences :constraints)
(:types
  location - object
  target - object
  locatable - object
  vehicle - locatable
  package - locatable
)
(:constants
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
  city-loc-4 - location
  city-loc-5 - location
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
)
(:predicates
  (road ?l1 - location ?l2 - location)
  (at ?x - locatable ?y - location)
  (in ?x - package ?y - vehicle)
  (has-petrol-station ?l - location)
  (ready-loading ?v - vehicle)
)
(:functions
  (capacity ?v - vehicle) - number
  (road-length ?l1 - location ?l2 - location) - number
  (fuel-demand ?l1 - location ?l2 - location) - number
  (fuel-left ?v - vehicle) - number
  (fuel-max ?v - vehicle) - number
  (package-size ?p - package) - number
)
(:durative-action drive_truck-1_city-loc-3_city-loc-1
:parameters (?truck-1 - vehicle ?city-loc-3 - location ?city-loc-1 - location)
:duration (= ?duration (road-length ?city-loc-3 ?city-loc-1))
:condition (and 
  (at start (at ?truck-1 ?city-loc-3))
  (at start (road ?city-loc-3 ?city-loc-1))
  (at start (>= (fuel-left ?truck-1) (fuel-demand ?city-loc-3 ?city-loc-1))))
:effect (and 
  (at start (not (at ?truck-1 ?city-loc-3)))
  (at start (decrease (fuel-left ?truck-1) (fuel-demand ?city-loc-3 ?city-loc-1)))
  (at end (at ?truck-1 ?city-loc-1)))
)
(:durative-action drive_truck-1_city-loc-3_city-loc-2
:parameters (?truck-1 - vehicle ?city-loc-3 - location ?city-loc-2 - location)
:duration (= ?duration (road-length ?city-loc-3 ?city-loc-2))
:condition (and 
  (at start (at ?truck-1 ?city-loc-3))
  (at start (road ?city-loc-3 ?city-loc-2))
  (at start (>= (fuel-left ?truck-1) (fuel-demand ?city-loc-3 ?city-loc-2))))
:effect (and 
  (at start (not (at ?truck-1 ?city-loc-3)))
  (at start (decrease (fuel-left ?truck-1) (fuel-demand ?city-loc-3 ?city-loc-2)))
  (at end (at ?truck-1 ?city-loc-2)))
)
(:durative-action drive_truck-2_city-loc-4_city-loc-1
:parameters (?truck-2 - vehicle ?city-loc-4 - location ?city-loc-1 - location)
:duration (= ?duration (road-length ?city-loc-4 ?city-loc-1))
:condition (and 
  (at start (at ?truck-2 ?city-loc-4))
  (at start (road ?city-loc-4 ?city-loc-1))
  (at start (>= (fuel-left ?truck-2) (fuel-demand ?city-loc-4 ?city-loc-1))))
:effect (and 
  (at start (not (at ?truck-2 ?city-loc-4)))
  (at start (decrease (fuel-left ?truck-2) (fuel-demand ?city-loc-4 ?city-loc-1)))
  (at end (at ?truck-2 ?city-loc-1)))
)
(:durative-action drive_truck-2_city-loc-4_city-loc-3
:parameters (?truck-2 - vehicle ?city-loc-4 - location ?city-loc-3 - location)
:duration (= ?duration (road-length ?city-loc-4 ?city-loc-3))
:condition (and 
  (at start (at ?truck-2 ?city-loc-4))
  (at start (road ?city-loc-4 ?city-loc-3))
  (at start (>= (fuel-left ?truck-2) (fuel-demand ?city-loc-4 ?city-loc-3))))
:effect (and 
  (at start (not (at ?truck-2 ?city-loc-4)))
  (at start (decrease (fuel-left ?truck-2) (fuel-demand ?city-loc-4 ?city-loc-3)))
  (at end (at ?truck-2 ?city-loc-3)))
)
(:durative-action drive_truck-1_city-loc-3_city-loc-4
:parameters (?truck-1 - vehicle ?city-loc-3 - location ?city-loc-4 - location)
:duration (= ?duration (road-length ?city-loc-3 ?city-loc-4))
:condition (and 
  (at start (at ?truck-1 ?city-loc-3))
  (at start (road ?city-loc-3 ?city-loc-4))
  (at start (>= (fuel-left ?truck-1) (fuel-demand ?city-loc-3 ?city-loc-4))))
:effect (and 
  (at start (not (at ?truck-1 ?city-loc-3)))
  (at start (decrease (fuel-left ?truck-1) (fuel-demand ?city-loc-3 ?city-loc-4)))
  (at end (at ?truck-1 ?city-loc-4)))
)
(:durative-action drive_truck-2_city-loc-4_city-loc-5
:parameters (?truck-2 - vehicle ?city-loc-4 - location ?city-loc-5 - location)
:duration (= ?duration (road-length ?city-loc-4 ?city-loc-5))
:condition (and 
  (at start (at ?truck-2 ?city-loc-4))
  (at start (road ?city-loc-4 ?city-loc-5))
  (at start (>= (fuel-left ?truck-2) (fuel-demand ?city-loc-4 ?city-loc-5))))
:effect (and 
  (at start (not (at ?truck-2 ?city-loc-4)))
  (at start (decrease (fuel-left ?truck-2) (fuel-demand ?city-loc-4 ?city-loc-5)))
  (at end (at ?truck-2 ?city-loc-5)))
)
(:durative-action pick-up_truck-1_city-loc-3_package-1
:parameters (?truck-1 - vehicle ?city-loc-3 - location ?package-1 - package)
:duration (= ?duration 1)
:condition (and 
  (at start (at ?truck-1 ?city-loc-3))
  (at start (at ?package-1 ?city-loc-3))
  (at start (ready-loading ?truck-1))
  (at start (>= (capacity ?truck-1) (package-size ?package-1)))
  (over all (at ?truck-1 ?city-loc-3)))
:effect (and 
  (at start (not (at ?package-1 ?city-loc-3)))
  (at start (not (ready-loading ?truck-1)))
  (at start (decrease (capacity ?truck-1) (package-size ?package-1)))
  (at end (in ?package-1 ?truck-1))
  (at end (ready-loading ?truck-1)))
)
(:durative-action pick-up_truck-2_city-loc-4_package-2
:parameters (?truck-2 - vehicle ?city-loc-4 - location ?package-2 - package)
:duration (= ?duration 1)
:condition (and 
  (at start (at ?truck-2 ?city-loc-4))
  (at start (at ?package-2 ?city-loc-4))
  (at start (ready-loading ?truck-2))
  (at start (>= (capacity ?truck-2) (package-size ?package-2)))
  (over all (at ?truck-2 ?city-loc-4)))
:effect (and 
  (at start (not (at ?package-2 ?city-loc-4)))
  (at start (not (ready-loading ?truck-2)))
  (at start (decrease (capacity ?truck-2) (package-size ?package-2)))
  (at end (in ?package-2 ?truck-2))
  (at end (ready-loading ?truck-2)))
)
(:durative-action drive_truck-1_city-loc-1_city-loc-3
:parameters (?truck-1 - vehicle ?city-loc-1 - location ?city-loc-3 - location)
:duration (= ?duration (road-length ?city-loc-1 ?city-loc-3))
:condition (and 
  (at start (at ?truck-1 ?city-loc-1))
  (at start (road ?city-loc-1 ?city-loc-3))
  (at start (>= (fuel-left ?truck-1) (fuel-demand ?city-loc-1 ?city-loc-3))))
:effect (and 
  (at start (not (at ?truck-1 ?city-loc-1)))
  (at start (decrease (fuel-left ?truck-1) (fuel-demand ?city-loc-1 ?city-loc-3)))
  (at end (at ?truck-1 ?city-loc-3)))
)
(:durative-action drive_truck-1_city-loc-1_city-loc-4
:parameters (?truck-1 - vehicle ?city-loc-1 - location ?city-loc-4 - location)
:duration (= ?duration (road-length ?city-loc-1 ?city-loc-4))
:condition (and 
  (at start (at ?truck-1 ?city-loc-1))
  (at start (road ?city-loc-1 ?city-loc-4))
  (at start (>= (fuel-left ?truck-1) (fuel-demand ?city-loc-1 ?city-loc-4))))
:effect (and 
  (at start (not (at ?truck-1 ?city-loc-1)))
  (at start (decrease (fuel-left ?truck-1) (fuel-demand ?city-loc-1 ?city-loc-4)))
  (at end (at ?truck-1 ?city-loc-4)))
)
(:durative-action drive_truck-1_city-loc-1_city-loc-5
:parameters (?truck-1 - vehicle ?city-loc-1 - location ?city-loc-5 - location)
:duration (= ?duration (road-length ?city-loc-1 ?city-loc-5))
:condition (and 
  (at start (at ?truck-1 ?city-loc-1))
  (at start (road ?city-loc-1 ?city-loc-5))
  (at start (>= (fuel-left ?truck-1) (fuel-demand ?city-loc-1 ?city-loc-5))))
:effect (and 
  (at start (not (at ?truck-1 ?city-loc-1)))
  (at start (decrease (fuel-left ?truck-1) (fuel-demand ?city-loc-1 ?city-loc-5)))
  (at end (at ?truck-1 ?city-loc-5)))
)
(:durative-action drive_truck-1_city-loc-2_city-loc-3
:parameters (?truck-1 - vehicle ?city-loc-2 - location ?city-loc-3 - location)
:duration (= ?duration (road-length ?city-loc-2 ?city-loc-3))
:condition (and 
  (at start (at ?truck-1 ?city-loc-2))
  (at start (road ?city-loc-2 ?city-loc-3))
  (at start (>= (fuel-left ?truck-1) (fuel-demand ?city-loc-2 ?city-loc-3))))
:effect (and 
  (at start (not (at ?truck-1 ?city-loc-2)))
  (at start (decrease (fuel-left ?truck-1) (fuel-demand ?city-loc-2 ?city-loc-3)))
  (at end (at ?truck-1 ?city-loc-3)))
)
(:durative-action drive_truck-2_city-loc-1_city-loc-3
:parameters (?truck-2 - vehicle ?city-loc-1 - location ?city-loc-3 - location)
:duration (= ?duration (road-length ?city-loc-1 ?city-loc-3))
:condition (and 
  (at start (at ?truck-2 ?city-loc-1))
  (at start (road ?city-loc-1 ?city-loc-3))
  (at start (>= (fuel-left ?truck-2) (fuel-demand ?city-loc-1 ?city-loc-3))))
:effect (and 
  (at start (not (at ?truck-2 ?city-loc-1)))
  (at start (decrease (fuel-left ?truck-2) (fuel-demand ?city-loc-1 ?city-loc-3)))
  (at end (at ?truck-2 ?city-loc-3)))
)
(:durative-action drive_truck-2_city-loc-1_city-loc-4
:parameters (?truck-2 - vehicle ?city-loc-1 - location ?city-loc-4 - location)
:duration (= ?duration (road-length ?city-loc-1 ?city-loc-4))
:condition (and 
  (at start (at ?truck-2 ?city-loc-1))
  (at start (road ?city-loc-1 ?city-loc-4))
  (at start (>= (fuel-left ?truck-2) (fuel-demand ?city-loc-1 ?city-loc-4))))
:effect (and 
  (at start (not (at ?truck-2 ?city-loc-1)))
  (at start (decrease (fuel-left ?truck-2) (fuel-demand ?city-loc-1 ?city-loc-4)))
  (at end (at ?truck-2 ?city-loc-4)))
)
(:durative-action drive_truck-2_city-loc-1_city-loc-5
:parameters (?truck-2 - vehicle ?city-loc-1 - location ?city-loc-5 - location)
:duration (= ?duration (road-length ?city-loc-1 ?city-loc-5))
:condition (and 
  (at start (at ?truck-2 ?city-loc-1))
  (at start (road ?city-loc-1 ?city-loc-5))
  (at start (>= (fuel-left ?truck-2) (fuel-demand ?city-loc-1 ?city-loc-5))))
:effect (and 
  (at start (not (at ?truck-2 ?city-loc-1)))
  (at start (decrease (fuel-left ?truck-2) (fuel-demand ?city-loc-1 ?city-loc-5)))
  (at end (at ?truck-2 ?city-loc-5)))
)
(:durative-action drive_truck-2_city-loc-3_city-loc-1
:parameters (?truck-2 - vehicle ?city-loc-3 - location ?city-loc-1 - location)
:duration (= ?duration (road-length ?city-loc-3 ?city-loc-1))
:condition (and 
  (at start (at ?truck-2 ?city-loc-3))
  (at start (road ?city-loc-3 ?city-loc-1))
  (at start (>= (fuel-left ?truck-2) (fuel-demand ?city-loc-3 ?city-loc-1))))
:effect (and 
  (at start (not (at ?truck-2 ?city-loc-3)))
  (at start (decrease (fuel-left ?truck-2) (fuel-demand ?city-loc-3 ?city-loc-1)))
  (at end (at ?truck-2 ?city-loc-1)))
)
(:durative-action drive_truck-2_city-loc-3_city-loc-2
:parameters (?truck-2 - vehicle ?city-loc-3 - location ?city-loc-2 - location)
:duration (= ?duration (road-length ?city-loc-3 ?city-loc-2))
:condition (and 
  (at start (at ?truck-2 ?city-loc-3))
  (at start (road ?city-loc-3 ?city-loc-2))
  (at start (>= (fuel-left ?truck-2) (fuel-demand ?city-loc-3 ?city-loc-2))))
:effect (and 
  (at start (not (at ?truck-2 ?city-loc-3)))
  (at start (decrease (fuel-left ?truck-2) (fuel-demand ?city-loc-3 ?city-loc-2)))
  (at end (at ?truck-2 ?city-loc-2)))
)
(:durative-action drive_truck-2_city-loc-3_city-loc-4
:parameters (?truck-2 - vehicle ?city-loc-3 - location ?city-loc-4 - location)
:duration (= ?duration (road-length ?city-loc-3 ?city-loc-4))
:condition (and 
  (at start (at ?truck-2 ?city-loc-3))
  (at start (road ?city-loc-3 ?city-loc-4))
  (at start (>= (fuel-left ?truck-2) (fuel-demand ?city-loc-3 ?city-loc-4))))
:effect (and 
  (at start (not (at ?truck-2 ?city-loc-3)))
  (at start (decrease (fuel-left ?truck-2) (fuel-demand ?city-loc-3 ?city-loc-4)))
  (at end (at ?truck-2 ?city-loc-4)))
)
(:durative-action drive_truck-1_city-loc-4_city-loc-1
:parameters (?truck-1 - vehicle ?city-loc-4 - location ?city-loc-1 - location)
:duration (= ?duration (road-length ?city-loc-4 ?city-loc-1))
:condition (and 
  (at start (at ?truck-1 ?city-loc-4))
  (at start (road ?city-loc-4 ?city-loc-1))
  (at start (>= (fuel-left ?truck-1) (fuel-demand ?city-loc-4 ?city-loc-1))))
:effect (and 
  (at start (not (at ?truck-1 ?city-loc-4)))
  (at start (decrease (fuel-left ?truck-1) (fuel-demand ?city-loc-4 ?city-loc-1)))
  (at end (at ?truck-1 ?city-loc-1)))
)
(:durative-action drive_truck-1_city-loc-4_city-loc-3
:parameters (?truck-1 - vehicle ?city-loc-4 - location ?city-loc-3 - location)
:duration (= ?duration (road-length ?city-loc-4 ?city-loc-3))
:condition (and 
  (at start (at ?truck-1 ?city-loc-4))
  (at start (road ?city-loc-4 ?city-loc-3))
  (at start (>= (fuel-left ?truck-1) (fuel-demand ?city-loc-4 ?city-loc-3))))
:effect (and 
  (at start (not (at ?truck-1 ?city-loc-4)))
  (at start (decrease (fuel-left ?truck-1) (fuel-demand ?city-loc-4 ?city-loc-3)))
  (at end (at ?truck-1 ?city-loc-3)))
)
(:durative-action drive_truck-1_city-loc-4_city-loc-5
:parameters (?truck-1 - vehicle ?city-loc-4 - location ?city-loc-5 - location)
:duration (= ?duration (road-length ?city-loc-4 ?city-loc-5))
:condition (and 
  (at start (at ?truck-1 ?city-loc-4))
  (at start (road ?city-loc-4 ?city-loc-5))
  (at start (>= (fuel-left ?truck-1) (fuel-demand ?city-loc-4 ?city-loc-5))))
:effect (and 
  (at start (not (at ?truck-1 ?city-loc-4)))
  (at start (decrease (fuel-left ?truck-1) (fuel-demand ?city-loc-4 ?city-loc-5)))
  (at end (at ?truck-1 ?city-loc-5)))
)
(:durative-action drive_truck-2_city-loc-5_city-loc-1
:parameters (?truck-2 - vehicle ?city-loc-5 - location ?city-loc-1 - location)
:duration (= ?duration (road-length ?city-loc-5 ?city-loc-1))
:condition (and 
  (at start (at ?truck-2 ?city-loc-5))
  (at start (road ?city-loc-5 ?city-loc-1))
  (at start (>= (fuel-left ?truck-2) (fuel-demand ?city-loc-5 ?city-loc-1))))
:effect (and 
  (at start (not (at ?truck-2 ?city-loc-5)))
  (at start (decrease (fuel-left ?truck-2) (fuel-demand ?city-loc-5 ?city-loc-1)))
  (at end (at ?truck-2 ?city-loc-1)))
)
(:durative-action drive_truck-2_city-loc-5_city-loc-4
:parameters (?truck-2 - vehicle ?city-loc-5 - location ?city-loc-4 - location)
:duration (= ?duration (road-length ?city-loc-5 ?city-loc-4))
:condition (and 
  (at start (at ?truck-2 ?city-loc-5))
  (at start (road ?city-loc-5 ?city-loc-4))
  (at start (>= (fuel-left ?truck-2) (fuel-demand ?city-loc-5 ?city-loc-4))))
:effect (and 
  (at start (not (at ?truck-2 ?city-loc-5)))
  (at start (decrease (fuel-left ?truck-2) (fuel-demand ?city-loc-5 ?city-loc-4)))
  (at end (at ?truck-2 ?city-loc-4)))
)
(:durative-action drop_truck-1_city-loc-3_package-1
:parameters (?truck-1 - vehicle ?city-loc-3 - location ?package-1 - package)
:duration (= ?duration 1)
:condition (and 
  (at start (at ?truck-1 ?city-loc-3))
  (at start (in ?package-1 ?truck-1))
  (at start (ready-loading ?truck-1))
  (over all (at ?truck-1 ?city-loc-3)))
:effect (and 
  (at start (not (in ?package-1 ?truck-1)))
  (at start (not (ready-loading ?truck-1)))
  (at end (at ?package-1 ?city-loc-3))
  (at end (ready-loading ?truck-1))
  (at end (increase (capacity ?truck-1) (package-size ?package-1))))
)
(:durative-action drop_truck-2_city-loc-4_package-2
:parameters (?truck-2 - vehicle ?city-loc-4 - location ?package-2 - package)
:duration (= ?duration 1)
:condition (and 
  (at start (at ?truck-2 ?city-loc-4))
  (at start (in ?package-2 ?truck-2))
  (at start (ready-loading ?truck-2))
  (over all (at ?truck-2 ?city-loc-4)))
:effect (and 
  (at start (not (in ?package-2 ?truck-2)))
  (at start (not (ready-loading ?truck-2)))
  (at end (at ?package-2 ?city-loc-4))
  (at end (ready-loading ?truck-2))
  (at end (increase (capacity ?truck-2) (package-size ?package-2))))
)
(:durative-action drive_truck-1_city-loc-5_city-loc-1
:parameters (?truck-1 - vehicle ?city-loc-5 - location ?city-loc-1 - location)
:duration (= ?duration (road-length ?city-loc-5 ?city-loc-1))
:condition (and 
  (at start (at ?truck-1 ?city-loc-5))
  (at start (road ?city-loc-5 ?city-loc-1))
  (at start (>= (fuel-left ?truck-1) (fuel-demand ?city-loc-5 ?city-loc-1))))
:effect (and 
  (at start (not (at ?truck-1 ?city-loc-5)))
  (at start (decrease (fuel-left ?truck-1) (fuel-demand ?city-loc-5 ?city-loc-1)))
  (at end (at ?truck-1 ?city-loc-1)))
)
(:durative-action drive_truck-1_city-loc-5_city-loc-4
:parameters (?truck-1 - vehicle ?city-loc-5 - location ?city-loc-4 - location)
:duration (= ?duration (road-length ?city-loc-5 ?city-loc-4))
:condition (and 
  (at start (at ?truck-1 ?city-loc-5))
  (at start (road ?city-loc-5 ?city-loc-4))
  (at start (>= (fuel-left ?truck-1) (fuel-demand ?city-loc-5 ?city-loc-4))))
:effect (and 
  (at start (not (at ?truck-1 ?city-loc-5)))
  (at start (decrease (fuel-left ?truck-1) (fuel-demand ?city-loc-5 ?city-loc-4)))
  (at end (at ?truck-1 ?city-loc-4)))
)
(:durative-action drive_truck-2_city-loc-2_city-loc-3
:parameters (?truck-2 - vehicle ?city-loc-2 - location ?city-loc-3 - location)
:duration (= ?duration (road-length ?city-loc-2 ?city-loc-3))
:condition (and 
  (at start (at ?truck-2 ?city-loc-2))
  (at start (road ?city-loc-2 ?city-loc-3))
  (at start (>= (fuel-left ?truck-2) (fuel-demand ?city-loc-2 ?city-loc-3))))
:effect (and 
  (at start (not (at ?truck-2 ?city-loc-2)))
  (at start (decrease (fuel-left ?truck-2) (fuel-demand ?city-loc-2 ?city-loc-3)))
  (at end (at ?truck-2 ?city-loc-3)))
)
)
