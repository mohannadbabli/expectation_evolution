(define (domain depot)
(:requirements :typing :durative-actions :fluents)
(:types
  place - object
  locatable - object
  depot - place
  distributor - place
  truck - locatable
  hoist - locatable
  surface - locatable
  pallet - surface
  crate - surface
)
(:constants
  depot0 - depot
  distributor0 - distributor
  distributor1 - distributor
  truck0 - truck
  truck1 - truck
  pallet0 - pallet
  pallet1 - pallet
  pallet2 - pallet
  crate0 - crate
  crate1 - crate
  hoist0 - hoist
  hoist1 - hoist
  hoist2 - hoist
)
(:predicates
  (at ?x - locatable ?y - place)
  (on ?x - crate ?y - surface)
  (in ?x - crate ?y - truck)
  (lifting ?x - hoist ?y - crate)
  (available ?x - hoist)
  (clear ?x - surface)
)
(:functions
  (distance ?x - place ?y - place) - number
  (speed ?t - truck) - number
  (weight ?c - crate) - number
  (power ?h - hoist) - number
  (duration-driving ?x - truck ?y - place ?z - place) - number
  (duration-lift-drop) - number
  (duration-load-unload ?x - hoist ?y - crate) - number
)
(:durative-action lift_hoist0_crate1_pallet0_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?pallet0 - pallet ?depot0 - depot)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist0))
  (at start (at ?crate1 ?depot0))
  (at start (on ?crate1 ?pallet0))
  (at start (clear ?crate1))
  (over all (at ?hoist0 ?depot0)))
:effect (and 
  (at start (not (at ?crate1 ?depot0)))
  (at start (lifting ?hoist0 ?crate1))
  (at start (not (clear ?crate1)))
  (at start (not (available ?hoist0)))
  (at start (clear ?pallet0))
  (at start (not (on ?crate1 ?pallet0))))
)
(:durative-action lift_hoist1_crate0_pallet1_distributor0
:parameters (?hoist1 - hoist ?crate0 - crate ?pallet1 - pallet ?distributor0 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist1))
  (at start (at ?crate0 ?distributor0))
  (at start (on ?crate0 ?pallet1))
  (at start (clear ?crate0))
  (over all (at ?hoist1 ?distributor0)))
:effect (and 
  (at start (not (at ?crate0 ?distributor0)))
  (at start (lifting ?hoist1 ?crate0))
  (at start (not (clear ?crate0)))
  (at start (not (available ?hoist1)))
  (at start (clear ?pallet1))
  (at start (not (on ?crate0 ?pallet1))))
)
(:durative-action drive_truck0_distributor1_depot0
:parameters (?truck0 - truck ?distributor1 - distributor ?depot0 - depot)
:duration (= ?duration (duration-driving ?truck0 ?distributor1 ?depot0))
:condition
  (at start (at ?truck0 ?distributor1))
:effect (and 
  (at start (not (at ?truck0 ?distributor1)))
  (at end (at ?truck0 ?depot0)))
)
(:durative-action drive_truck0_distributor1_distributor0
:parameters (?truck0 - truck ?distributor1 - distributor ?distributor0 - distributor)
:duration (= ?duration (duration-driving ?truck0 ?distributor1 ?distributor0))
:condition
  (at start (at ?truck0 ?distributor1))
:effect (and 
  (at start (not (at ?truck0 ?distributor1)))
  (at end (at ?truck0 ?distributor0)))
)
(:durative-action drive_truck0_distributor1_distributor1
:parameters (?truck0 - truck ?distributor1 - distributor ?distributor1 - distributor)
:duration (= ?duration (duration-driving ?truck0 ?distributor1 ?distributor1))
:condition
  (at start (at ?truck0 ?distributor1))
:effect (and 
  (at start (not (at ?truck0 ?distributor1)))
  (at end (at ?truck0 ?distributor1)))
)
(:durative-action drive_truck1_depot0_depot0
:parameters (?truck1 - truck ?depot0 - depot ?depot0 - depot)
:duration (= ?duration (duration-driving ?truck1 ?depot0 ?depot0))
:condition
  (at start (at ?truck1 ?depot0))
:effect (and 
  (at start (not (at ?truck1 ?depot0)))
  (at end (at ?truck1 ?depot0)))
)
(:durative-action drive_truck1_depot0_distributor0
:parameters (?truck1 - truck ?depot0 - depot ?distributor0 - distributor)
:duration (= ?duration (duration-driving ?truck1 ?depot0 ?distributor0))
:condition
  (at start (at ?truck1 ?depot0))
:effect (and 
  (at start (not (at ?truck1 ?depot0)))
  (at end (at ?truck1 ?distributor0)))
)
(:durative-action drive_truck1_depot0_distributor1
:parameters (?truck1 - truck ?depot0 - depot ?distributor1 - distributor)
:duration (= ?duration (duration-driving ?truck1 ?depot0 ?distributor1))
:condition
  (at start (at ?truck1 ?depot0))
:effect (and 
  (at start (not (at ?truck1 ?depot0)))
  (at end (at ?truck1 ?distributor1)))
)
(:durative-action drop_hoist0_crate1_pallet0_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?pallet0 - pallet ?depot0 - depot)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (over all (at ?hoist0 ?depot0))
  (over all (at ?pallet0 ?depot0))
  (over all (clear ?pallet0))
  (over all (lifting ?hoist0 ?crate1)))
:effect (and 
  (at end (available ?hoist0))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (at ?crate1 ?depot0))
  (at end (not (clear ?pallet0)))
  (at end (clear ?crate1))
  (at end (on ?crate1 ?pallet0)))
)
(:durative-action load_hoist0_crate1_truck1_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?truck1 - truck ?depot0 - depot)
:duration (= ?duration (duration-load-unload ?hoist0 ?crate1))
:condition (and 
  (over all (at ?hoist0 ?depot0))
  (over all (at ?truck1 ?depot0))
  (over all (lifting ?hoist0 ?crate1)))
:effect (and 
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (in ?crate1 ?truck1))
  (at end (available ?hoist0)))
)
(:durative-action load_hoist0_crate1_truck0_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?truck0 - truck ?depot0 - depot)
:duration (= ?duration (duration-load-unload ?hoist0 ?crate1))
:condition (and 
  (over all (at ?hoist0 ?depot0))
  (over all (at ?truck0 ?depot0))
  (over all (lifting ?hoist0 ?crate1)))
:effect (and 
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (in ?crate1 ?truck0))
  (at end (available ?hoist0)))
)
(:durative-action drop_hoist1_crate0_pallet1_distributor0
:parameters (?hoist1 - hoist ?crate0 - crate ?pallet1 - pallet ?distributor0 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (over all (at ?hoist1 ?distributor0))
  (over all (at ?pallet1 ?distributor0))
  (over all (clear ?pallet1))
  (over all (lifting ?hoist1 ?crate0)))
:effect (and 
  (at end (available ?hoist1))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (at ?crate0 ?distributor0))
  (at end (not (clear ?pallet1)))
  (at end (clear ?crate0))
  (at end (on ?crate0 ?pallet1)))
)
(:durative-action load_hoist1_crate0_truck0_distributor0
:parameters (?hoist1 - hoist ?crate0 - crate ?truck0 - truck ?distributor0 - distributor)
:duration (= ?duration (duration-load-unload ?hoist1 ?crate0))
:condition (and 
  (over all (at ?hoist1 ?distributor0))
  (over all (at ?truck0 ?distributor0))
  (over all (lifting ?hoist1 ?crate0)))
:effect (and 
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (in ?crate0 ?truck0))
  (at end (available ?hoist1)))
)
(:durative-action load_hoist1_crate0_truck1_distributor0
:parameters (?hoist1 - hoist ?crate0 - crate ?truck1 - truck ?distributor0 - distributor)
:duration (= ?duration (duration-load-unload ?hoist1 ?crate0))
:condition (and 
  (over all (at ?hoist1 ?distributor0))
  (over all (at ?truck1 ?distributor0))
  (over all (lifting ?hoist1 ?crate0)))
:effect (and 
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (in ?crate0 ?truck1))
  (at end (available ?hoist1)))
)
(:durative-action drive_truck0_depot0_depot0
:parameters (?truck0 - truck ?depot0 - depot ?depot0 - depot)
:duration (= ?duration (duration-driving ?truck0 ?depot0 ?depot0))
:condition
  (at start (at ?truck0 ?depot0))
:effect (and 
  (at start (not (at ?truck0 ?depot0)))
  (at end (at ?truck0 ?depot0)))
)
(:durative-action drive_truck0_depot0_distributor0
:parameters (?truck0 - truck ?depot0 - depot ?distributor0 - distributor)
:duration (= ?duration (duration-driving ?truck0 ?depot0 ?distributor0))
:condition
  (at start (at ?truck0 ?depot0))
:effect (and 
  (at start (not (at ?truck0 ?depot0)))
  (at end (at ?truck0 ?distributor0)))
)
(:durative-action drive_truck0_depot0_distributor1
:parameters (?truck0 - truck ?depot0 - depot ?distributor1 - distributor)
:duration (= ?duration (duration-driving ?truck0 ?depot0 ?distributor1))
:condition
  (at start (at ?truck0 ?depot0))
:effect (and 
  (at start (not (at ?truck0 ?depot0)))
  (at end (at ?truck0 ?distributor1)))
)
(:durative-action drive_truck0_distributor0_depot0
:parameters (?truck0 - truck ?distributor0 - distributor ?depot0 - depot)
:duration (= ?duration (duration-driving ?truck0 ?distributor0 ?depot0))
:condition
  (at start (at ?truck0 ?distributor0))
:effect (and 
  (at start (not (at ?truck0 ?distributor0)))
  (at end (at ?truck0 ?depot0)))
)
(:durative-action drive_truck0_distributor0_distributor0
:parameters (?truck0 - truck ?distributor0 - distributor ?distributor0 - distributor)
:duration (= ?duration (duration-driving ?truck0 ?distributor0 ?distributor0))
:condition
  (at start (at ?truck0 ?distributor0))
:effect (and 
  (at start (not (at ?truck0 ?distributor0)))
  (at end (at ?truck0 ?distributor0)))
)
(:durative-action drive_truck0_distributor0_distributor1
:parameters (?truck0 - truck ?distributor0 - distributor ?distributor1 - distributor)
:duration (= ?duration (duration-driving ?truck0 ?distributor0 ?distributor1))
:condition
  (at start (at ?truck0 ?distributor0))
:effect (and 
  (at start (not (at ?truck0 ?distributor0)))
  (at end (at ?truck0 ?distributor1)))
)
(:durative-action drive_truck1_distributor0_depot0
:parameters (?truck1 - truck ?distributor0 - distributor ?depot0 - depot)
:duration (= ?duration (duration-driving ?truck1 ?distributor0 ?depot0))
:condition
  (at start (at ?truck1 ?distributor0))
:effect (and 
  (at start (not (at ?truck1 ?distributor0)))
  (at end (at ?truck1 ?depot0)))
)
(:durative-action drive_truck1_distributor0_distributor0
:parameters (?truck1 - truck ?distributor0 - distributor ?distributor0 - distributor)
:duration (= ?duration (duration-driving ?truck1 ?distributor0 ?distributor0))
:condition
  (at start (at ?truck1 ?distributor0))
:effect (and 
  (at start (not (at ?truck1 ?distributor0)))
  (at end (at ?truck1 ?distributor0)))
)
(:durative-action drive_truck1_distributor0_distributor1
:parameters (?truck1 - truck ?distributor0 - distributor ?distributor1 - distributor)
:duration (= ?duration (duration-driving ?truck1 ?distributor0 ?distributor1))
:condition
  (at start (at ?truck1 ?distributor0))
:effect (and 
  (at start (not (at ?truck1 ?distributor0)))
  (at end (at ?truck1 ?distributor1)))
)
(:durative-action drive_truck1_distributor1_depot0
:parameters (?truck1 - truck ?distributor1 - distributor ?depot0 - depot)
:duration (= ?duration (duration-driving ?truck1 ?distributor1 ?depot0))
:condition
  (at start (at ?truck1 ?distributor1))
:effect (and 
  (at start (not (at ?truck1 ?distributor1)))
  (at end (at ?truck1 ?depot0)))
)
(:durative-action drive_truck1_distributor1_distributor0
:parameters (?truck1 - truck ?distributor1 - distributor ?distributor0 - distributor)
:duration (= ?duration (duration-driving ?truck1 ?distributor1 ?distributor0))
:condition
  (at start (at ?truck1 ?distributor1))
:effect (and 
  (at start (not (at ?truck1 ?distributor1)))
  (at end (at ?truck1 ?distributor0)))
)
(:durative-action drive_truck1_distributor1_distributor1
:parameters (?truck1 - truck ?distributor1 - distributor ?distributor1 - distributor)
:duration (= ?duration (duration-driving ?truck1 ?distributor1 ?distributor1))
:condition
  (at start (at ?truck1 ?distributor1))
:effect (and 
  (at start (not (at ?truck1 ?distributor1)))
  (at end (at ?truck1 ?distributor1)))
)
(:durative-action unload_hoist0_crate1_truck1_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?truck1 - truck ?depot0 - depot)
:duration (= ?duration (duration-load-unload ?hoist0 ?crate1))
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?truck1))
  (over all (at ?hoist0 ?depot0))
  (over all (at ?truck1 ?depot0)))
:effect (and 
  (at start (not (in ?crate1 ?truck1)))
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1)))
)
(:durative-action unload_hoist1_crate1_truck1_distributor0
:parameters (?hoist1 - hoist ?crate1 - crate ?truck1 - truck ?distributor0 - distributor)
:duration (= ?duration (duration-load-unload ?hoist1 ?crate1))
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?truck1))
  (over all (at ?hoist1 ?distributor0))
  (over all (at ?truck1 ?distributor0)))
:effect (and 
  (at start (not (in ?crate1 ?truck1)))
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1)))
)
(:durative-action unload_hoist2_crate1_truck1_distributor1
:parameters (?hoist2 - hoist ?crate1 - crate ?truck1 - truck ?distributor1 - distributor)
:duration (= ?duration (duration-load-unload ?hoist2 ?crate1))
:condition (and 
  (at start (available ?hoist2))
  (at start (in ?crate1 ?truck1))
  (over all (at ?hoist2 ?distributor1))
  (over all (at ?truck1 ?distributor1)))
:effect (and 
  (at start (not (in ?crate1 ?truck1)))
  (at start (not (available ?hoist2)))
  (at start (lifting ?hoist2 ?crate1)))
)
(:durative-action unload_hoist0_crate1_truck0_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?truck0 - truck ?depot0 - depot)
:duration (= ?duration (duration-load-unload ?hoist0 ?crate1))
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?truck0))
  (over all (at ?hoist0 ?depot0))
  (over all (at ?truck0 ?depot0)))
:effect (and 
  (at start (not (in ?crate1 ?truck0)))
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1)))
)
(:durative-action unload_hoist1_crate1_truck0_distributor0
:parameters (?hoist1 - hoist ?crate1 - crate ?truck0 - truck ?distributor0 - distributor)
:duration (= ?duration (duration-load-unload ?hoist1 ?crate1))
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?truck0))
  (over all (at ?hoist1 ?distributor0))
  (over all (at ?truck0 ?distributor0)))
:effect (and 
  (at start (not (in ?crate1 ?truck0)))
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1)))
)
(:durative-action unload_hoist2_crate1_truck0_distributor1
:parameters (?hoist2 - hoist ?crate1 - crate ?truck0 - truck ?distributor1 - distributor)
:duration (= ?duration (duration-load-unload ?hoist2 ?crate1))
:condition (and 
  (at start (available ?hoist2))
  (at start (in ?crate1 ?truck0))
  (over all (at ?hoist2 ?distributor1))
  (over all (at ?truck0 ?distributor1)))
:effect (and 
  (at start (not (in ?crate1 ?truck0)))
  (at start (not (available ?hoist2)))
  (at start (lifting ?hoist2 ?crate1)))
)
(:durative-action unload_hoist0_crate0_truck0_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?truck0 - truck ?depot0 - depot)
:duration (= ?duration (duration-load-unload ?hoist0 ?crate0))
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?truck0))
  (over all (at ?hoist0 ?depot0))
  (over all (at ?truck0 ?depot0)))
:effect (and 
  (at start (not (in ?crate0 ?truck0)))
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0)))
)
(:durative-action unload_hoist1_crate0_truck0_distributor0
:parameters (?hoist1 - hoist ?crate0 - crate ?truck0 - truck ?distributor0 - distributor)
:duration (= ?duration (duration-load-unload ?hoist1 ?crate0))
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?truck0))
  (over all (at ?hoist1 ?distributor0))
  (over all (at ?truck0 ?distributor0)))
:effect (and 
  (at start (not (in ?crate0 ?truck0)))
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0)))
)
(:durative-action unload_hoist2_crate0_truck0_distributor1
:parameters (?hoist2 - hoist ?crate0 - crate ?truck0 - truck ?distributor1 - distributor)
:duration (= ?duration (duration-load-unload ?hoist2 ?crate0))
:condition (and 
  (at start (available ?hoist2))
  (at start (in ?crate0 ?truck0))
  (over all (at ?hoist2 ?distributor1))
  (over all (at ?truck0 ?distributor1)))
:effect (and 
  (at start (not (in ?crate0 ?truck0)))
  (at start (not (available ?hoist2)))
  (at start (lifting ?hoist2 ?crate0)))
)
(:durative-action unload_hoist0_crate0_truck1_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?truck1 - truck ?depot0 - depot)
:duration (= ?duration (duration-load-unload ?hoist0 ?crate0))
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?truck1))
  (over all (at ?hoist0 ?depot0))
  (over all (at ?truck1 ?depot0)))
:effect (and 
  (at start (not (in ?crate0 ?truck1)))
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0)))
)
(:durative-action unload_hoist1_crate0_truck1_distributor0
:parameters (?hoist1 - hoist ?crate0 - crate ?truck1 - truck ?distributor0 - distributor)
:duration (= ?duration (duration-load-unload ?hoist1 ?crate0))
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?truck1))
  (over all (at ?hoist1 ?distributor0))
  (over all (at ?truck1 ?distributor0)))
:effect (and 
  (at start (not (in ?crate0 ?truck1)))
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0)))
)
(:durative-action unload_hoist2_crate0_truck1_distributor1
:parameters (?hoist2 - hoist ?crate0 - crate ?truck1 - truck ?distributor1 - distributor)
:duration (= ?duration (duration-load-unload ?hoist2 ?crate0))
:condition (and 
  (at start (available ?hoist2))
  (at start (in ?crate0 ?truck1))
  (over all (at ?hoist2 ?distributor1))
  (over all (at ?truck1 ?distributor1)))
:effect (and 
  (at start (not (in ?crate0 ?truck1)))
  (at start (not (available ?hoist2)))
  (at start (lifting ?hoist2 ?crate0)))
)
(:durative-action drop_hoist1_crate1_pallet1_distributor0
:parameters (?hoist1 - hoist ?crate1 - crate ?pallet1 - pallet ?distributor0 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (over all (at ?hoist1 ?distributor0))
  (over all (at ?pallet1 ?distributor0))
  (over all (clear ?pallet1))
  (over all (lifting ?hoist1 ?crate1)))
:effect (and 
  (at end (available ?hoist1))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (at ?crate1 ?distributor0))
  (at end (not (clear ?pallet1)))
  (at end (clear ?crate1))
  (at end (on ?crate1 ?pallet1)))
)
(:durative-action drop_hoist1_crate1_crate0_distributor0
:parameters (?hoist1 - hoist ?crate1 - crate ?crate0 - crate ?distributor0 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (over all (at ?hoist1 ?distributor0))
  (over all (at ?crate0 ?distributor0))
  (over all (clear ?crate0))
  (over all (lifting ?hoist1 ?crate1)))
:effect (and 
  (at end (available ?hoist1))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (at ?crate1 ?distributor0))
  (at end (not (clear ?crate0)))
  (at end (clear ?crate1))
  (at end (on ?crate1 ?crate0)))
)
(:durative-action load_hoist1_crate1_truck0_distributor0
:parameters (?hoist1 - hoist ?crate1 - crate ?truck0 - truck ?distributor0 - distributor)
:duration (= ?duration (duration-load-unload ?hoist1 ?crate1))
:condition (and 
  (over all (at ?hoist1 ?distributor0))
  (over all (at ?truck0 ?distributor0))
  (over all (lifting ?hoist1 ?crate1)))
:effect (and 
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (in ?crate1 ?truck0))
  (at end (available ?hoist1)))
)
(:durative-action load_hoist1_crate1_truck1_distributor0
:parameters (?hoist1 - hoist ?crate1 - crate ?truck1 - truck ?distributor0 - distributor)
:duration (= ?duration (duration-load-unload ?hoist1 ?crate1))
:condition (and 
  (over all (at ?hoist1 ?distributor0))
  (over all (at ?truck1 ?distributor0))
  (over all (lifting ?hoist1 ?crate1)))
:effect (and 
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (in ?crate1 ?truck1))
  (at end (available ?hoist1)))
)
(:durative-action drop_hoist2_crate1_pallet2_distributor1
:parameters (?hoist2 - hoist ?crate1 - crate ?pallet2 - pallet ?distributor1 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (over all (at ?hoist2 ?distributor1))
  (over all (at ?pallet2 ?distributor1))
  (over all (clear ?pallet2))
  (over all (lifting ?hoist2 ?crate1)))
:effect (and 
  (at end (available ?hoist2))
  (at end (not (lifting ?hoist2 ?crate1)))
  (at end (at ?crate1 ?distributor1))
  (at end (not (clear ?pallet2)))
  (at end (clear ?crate1))
  (at end (on ?crate1 ?pallet2)))
)
(:durative-action load_hoist2_crate1_truck0_distributor1
:parameters (?hoist2 - hoist ?crate1 - crate ?truck0 - truck ?distributor1 - distributor)
:duration (= ?duration (duration-load-unload ?hoist2 ?crate1))
:condition (and 
  (over all (at ?hoist2 ?distributor1))
  (over all (at ?truck0 ?distributor1))
  (over all (lifting ?hoist2 ?crate1)))
:effect (and 
  (at end (not (lifting ?hoist2 ?crate1)))
  (at end (in ?crate1 ?truck0))
  (at end (available ?hoist2)))
)
(:durative-action load_hoist2_crate1_truck1_distributor1
:parameters (?hoist2 - hoist ?crate1 - crate ?truck1 - truck ?distributor1 - distributor)
:duration (= ?duration (duration-load-unload ?hoist2 ?crate1))
:condition (and 
  (over all (at ?hoist2 ?distributor1))
  (over all (at ?truck1 ?distributor1))
  (over all (lifting ?hoist2 ?crate1)))
:effect (and 
  (at end (not (lifting ?hoist2 ?crate1)))
  (at end (in ?crate1 ?truck1))
  (at end (available ?hoist2)))
)
(:durative-action drop_hoist0_crate0_pallet0_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?pallet0 - pallet ?depot0 - depot)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (over all (at ?hoist0 ?depot0))
  (over all (at ?pallet0 ?depot0))
  (over all (clear ?pallet0))
  (over all (lifting ?hoist0 ?crate0)))
:effect (and 
  (at end (available ?hoist0))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (at ?crate0 ?depot0))
  (at end (not (clear ?pallet0)))
  (at end (clear ?crate0))
  (at end (on ?crate0 ?pallet0)))
)
(:durative-action drop_hoist0_crate0_crate1_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?crate1 - crate ?depot0 - depot)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (over all (at ?hoist0 ?depot0))
  (over all (at ?crate1 ?depot0))
  (over all (clear ?crate1))
  (over all (lifting ?hoist0 ?crate0)))
:effect (and 
  (at end (available ?hoist0))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (at ?crate0 ?depot0))
  (at end (not (clear ?crate1)))
  (at end (clear ?crate0))
  (at end (on ?crate0 ?crate1)))
)
(:durative-action load_hoist0_crate0_truck1_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?truck1 - truck ?depot0 - depot)
:duration (= ?duration (duration-load-unload ?hoist0 ?crate0))
:condition (and 
  (over all (at ?hoist0 ?depot0))
  (over all (at ?truck1 ?depot0))
  (over all (lifting ?hoist0 ?crate0)))
:effect (and 
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (in ?crate0 ?truck1))
  (at end (available ?hoist0)))
)
(:durative-action load_hoist0_crate0_truck0_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?truck0 - truck ?depot0 - depot)
:duration (= ?duration (duration-load-unload ?hoist0 ?crate0))
:condition (and 
  (over all (at ?hoist0 ?depot0))
  (over all (at ?truck0 ?depot0))
  (over all (lifting ?hoist0 ?crate0)))
:effect (and 
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (in ?crate0 ?truck0))
  (at end (available ?hoist0)))
)
(:durative-action drop_hoist2_crate0_pallet2_distributor1
:parameters (?hoist2 - hoist ?crate0 - crate ?pallet2 - pallet ?distributor1 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (over all (at ?hoist2 ?distributor1))
  (over all (at ?pallet2 ?distributor1))
  (over all (clear ?pallet2))
  (over all (lifting ?hoist2 ?crate0)))
:effect (and 
  (at end (available ?hoist2))
  (at end (not (lifting ?hoist2 ?crate0)))
  (at end (at ?crate0 ?distributor1))
  (at end (not (clear ?pallet2)))
  (at end (clear ?crate0))
  (at end (on ?crate0 ?pallet2)))
)
(:durative-action load_hoist2_crate0_truck0_distributor1
:parameters (?hoist2 - hoist ?crate0 - crate ?truck0 - truck ?distributor1 - distributor)
:duration (= ?duration (duration-load-unload ?hoist2 ?crate0))
:condition (and 
  (over all (at ?hoist2 ?distributor1))
  (over all (at ?truck0 ?distributor1))
  (over all (lifting ?hoist2 ?crate0)))
:effect (and 
  (at end (not (lifting ?hoist2 ?crate0)))
  (at end (in ?crate0 ?truck0))
  (at end (available ?hoist2)))
)
(:durative-action load_hoist2_crate0_truck1_distributor1
:parameters (?hoist2 - hoist ?crate0 - crate ?truck1 - truck ?distributor1 - distributor)
:duration (= ?duration (duration-load-unload ?hoist2 ?crate0))
:condition (and 
  (over all (at ?hoist2 ?distributor1))
  (over all (at ?truck1 ?distributor1))
  (over all (lifting ?hoist2 ?crate0)))
:effect (and 
  (at end (not (lifting ?hoist2 ?crate0)))
  (at end (in ?crate0 ?truck1))
  (at end (available ?hoist2)))
)
(:durative-action lift_hoist1_crate1_pallet0_distributor0
:parameters (?hoist1 - hoist ?crate1 - crate ?pallet0 - pallet ?distributor0 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist1))
  (at start (at ?crate1 ?distributor0))
  (at start (on ?crate1 ?pallet0))
  (at start (clear ?crate1))
  (over all (at ?hoist1 ?distributor0)))
:effect (and 
  (at start (not (at ?crate1 ?distributor0)))
  (at start (lifting ?hoist1 ?crate1))
  (at start (not (clear ?crate1)))
  (at start (not (available ?hoist1)))
  (at start (clear ?pallet0))
  (at start (not (on ?crate1 ?pallet0))))
)
(:durative-action lift_hoist1_crate1_pallet1_distributor0
:parameters (?hoist1 - hoist ?crate1 - crate ?pallet1 - pallet ?distributor0 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist1))
  (at start (at ?crate1 ?distributor0))
  (at start (on ?crate1 ?pallet1))
  (at start (clear ?crate1))
  (over all (at ?hoist1 ?distributor0)))
:effect (and 
  (at start (not (at ?crate1 ?distributor0)))
  (at start (lifting ?hoist1 ?crate1))
  (at start (not (clear ?crate1)))
  (at start (not (available ?hoist1)))
  (at start (clear ?pallet1))
  (at start (not (on ?crate1 ?pallet1))))
)
(:durative-action lift_hoist1_crate1_crate0_distributor0
:parameters (?hoist1 - hoist ?crate1 - crate ?crate0 - crate ?distributor0 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist1))
  (at start (at ?crate1 ?distributor0))
  (at start (on ?crate1 ?crate0))
  (at start (clear ?crate1))
  (over all (at ?hoist1 ?distributor0)))
:effect (and 
  (at start (not (at ?crate1 ?distributor0)))
  (at start (lifting ?hoist1 ?crate1))
  (at start (not (clear ?crate1)))
  (at start (not (available ?hoist1)))
  (at start (clear ?crate0))
  (at start (not (on ?crate1 ?crate0))))
)
(:durative-action lift_hoist1_crate1_pallet2_distributor0
:parameters (?hoist1 - hoist ?crate1 - crate ?pallet2 - pallet ?distributor0 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist1))
  (at start (at ?crate1 ?distributor0))
  (at start (on ?crate1 ?pallet2))
  (at start (clear ?crate1))
  (over all (at ?hoist1 ?distributor0)))
:effect (and 
  (at start (not (at ?crate1 ?distributor0)))
  (at start (lifting ?hoist1 ?crate1))
  (at start (not (clear ?crate1)))
  (at start (not (available ?hoist1)))
  (at start (clear ?pallet2))
  (at start (not (on ?crate1 ?pallet2))))
)
(:durative-action drop_hoist1_crate0_crate1_distributor0
:parameters (?hoist1 - hoist ?crate0 - crate ?crate1 - crate ?distributor0 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (over all (at ?hoist1 ?distributor0))
  (over all (at ?crate1 ?distributor0))
  (over all (clear ?crate1))
  (over all (lifting ?hoist1 ?crate0)))
:effect (and 
  (at end (available ?hoist1))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (at ?crate0 ?distributor0))
  (at end (not (clear ?crate1)))
  (at end (clear ?crate0))
  (at end (on ?crate0 ?crate1)))
)
(:durative-action lift_hoist0_crate1_pallet1_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?pallet1 - pallet ?depot0 - depot)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist0))
  (at start (at ?crate1 ?depot0))
  (at start (on ?crate1 ?pallet1))
  (at start (clear ?crate1))
  (over all (at ?hoist0 ?depot0)))
:effect (and 
  (at start (not (at ?crate1 ?depot0)))
  (at start (lifting ?hoist0 ?crate1))
  (at start (not (clear ?crate1)))
  (at start (not (available ?hoist0)))
  (at start (clear ?pallet1))
  (at start (not (on ?crate1 ?pallet1))))
)
(:durative-action lift_hoist2_crate1_pallet1_distributor1
:parameters (?hoist2 - hoist ?crate1 - crate ?pallet1 - pallet ?distributor1 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist2))
  (at start (at ?crate1 ?distributor1))
  (at start (on ?crate1 ?pallet1))
  (at start (clear ?crate1))
  (over all (at ?hoist2 ?distributor1)))
:effect (and 
  (at start (not (at ?crate1 ?distributor1)))
  (at start (lifting ?hoist2 ?crate1))
  (at start (not (clear ?crate1)))
  (at start (not (available ?hoist2)))
  (at start (clear ?pallet1))
  (at start (not (on ?crate1 ?pallet1))))
)
(:durative-action lift_hoist0_crate1_crate0_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?crate0 - crate ?depot0 - depot)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist0))
  (at start (at ?crate1 ?depot0))
  (at start (on ?crate1 ?crate0))
  (at start (clear ?crate1))
  (over all (at ?hoist0 ?depot0)))
:effect (and 
  (at start (not (at ?crate1 ?depot0)))
  (at start (lifting ?hoist0 ?crate1))
  (at start (not (clear ?crate1)))
  (at start (not (available ?hoist0)))
  (at start (clear ?crate0))
  (at start (not (on ?crate1 ?crate0))))
)
(:durative-action lift_hoist2_crate1_crate0_distributor1
:parameters (?hoist2 - hoist ?crate1 - crate ?crate0 - crate ?distributor1 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist2))
  (at start (at ?crate1 ?distributor1))
  (at start (on ?crate1 ?crate0))
  (at start (clear ?crate1))
  (over all (at ?hoist2 ?distributor1)))
:effect (and 
  (at start (not (at ?crate1 ?distributor1)))
  (at start (lifting ?hoist2 ?crate1))
  (at start (not (clear ?crate1)))
  (at start (not (available ?hoist2)))
  (at start (clear ?crate0))
  (at start (not (on ?crate1 ?crate0))))
)
(:durative-action lift_hoist2_crate1_pallet0_distributor1
:parameters (?hoist2 - hoist ?crate1 - crate ?pallet0 - pallet ?distributor1 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist2))
  (at start (at ?crate1 ?distributor1))
  (at start (on ?crate1 ?pallet0))
  (at start (clear ?crate1))
  (over all (at ?hoist2 ?distributor1)))
:effect (and 
  (at start (not (at ?crate1 ?distributor1)))
  (at start (lifting ?hoist2 ?crate1))
  (at start (not (clear ?crate1)))
  (at start (not (available ?hoist2)))
  (at start (clear ?pallet0))
  (at start (not (on ?crate1 ?pallet0))))
)
(:durative-action lift_hoist2_crate1_pallet2_distributor1
:parameters (?hoist2 - hoist ?crate1 - crate ?pallet2 - pallet ?distributor1 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist2))
  (at start (at ?crate1 ?distributor1))
  (at start (on ?crate1 ?pallet2))
  (at start (clear ?crate1))
  (over all (at ?hoist2 ?distributor1)))
:effect (and 
  (at start (not (at ?crate1 ?distributor1)))
  (at start (lifting ?hoist2 ?crate1))
  (at start (not (clear ?crate1)))
  (at start (not (available ?hoist2)))
  (at start (clear ?pallet2))
  (at start (not (on ?crate1 ?pallet2))))
)
(:durative-action drop_hoist2_crate0_crate1_distributor1
:parameters (?hoist2 - hoist ?crate0 - crate ?crate1 - crate ?distributor1 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (over all (at ?hoist2 ?distributor1))
  (over all (at ?crate1 ?distributor1))
  (over all (clear ?crate1))
  (over all (lifting ?hoist2 ?crate0)))
:effect (and 
  (at end (available ?hoist2))
  (at end (not (lifting ?hoist2 ?crate0)))
  (at end (at ?crate0 ?distributor1))
  (at end (not (clear ?crate1)))
  (at end (clear ?crate0))
  (at end (on ?crate0 ?crate1)))
)
(:durative-action lift_hoist0_crate1_pallet2_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?pallet2 - pallet ?depot0 - depot)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist0))
  (at start (at ?crate1 ?depot0))
  (at start (on ?crate1 ?pallet2))
  (at start (clear ?crate1))
  (over all (at ?hoist0 ?depot0)))
:effect (and 
  (at start (not (at ?crate1 ?depot0)))
  (at start (lifting ?hoist0 ?crate1))
  (at start (not (clear ?crate1)))
  (at start (not (available ?hoist0)))
  (at start (clear ?pallet2))
  (at start (not (on ?crate1 ?pallet2))))
)
(:durative-action lift_hoist0_crate0_pallet1_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?pallet1 - pallet ?depot0 - depot)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist0))
  (at start (at ?crate0 ?depot0))
  (at start (on ?crate0 ?pallet1))
  (at start (clear ?crate0))
  (over all (at ?hoist0 ?depot0)))
:effect (and 
  (at start (not (at ?crate0 ?depot0)))
  (at start (lifting ?hoist0 ?crate0))
  (at start (not (clear ?crate0)))
  (at start (not (available ?hoist0)))
  (at start (clear ?pallet1))
  (at start (not (on ?crate0 ?pallet1))))
)
(:durative-action lift_hoist0_crate0_pallet0_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?pallet0 - pallet ?depot0 - depot)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist0))
  (at start (at ?crate0 ?depot0))
  (at start (on ?crate0 ?pallet0))
  (at start (clear ?crate0))
  (over all (at ?hoist0 ?depot0)))
:effect (and 
  (at start (not (at ?crate0 ?depot0)))
  (at start (lifting ?hoist0 ?crate0))
  (at start (not (clear ?crate0)))
  (at start (not (available ?hoist0)))
  (at start (clear ?pallet0))
  (at start (not (on ?crate0 ?pallet0))))
)
(:durative-action lift_hoist0_crate0_crate1_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?crate1 - crate ?depot0 - depot)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist0))
  (at start (at ?crate0 ?depot0))
  (at start (on ?crate0 ?crate1))
  (at start (clear ?crate0))
  (over all (at ?hoist0 ?depot0)))
:effect (and 
  (at start (not (at ?crate0 ?depot0)))
  (at start (lifting ?hoist0 ?crate0))
  (at start (not (clear ?crate0)))
  (at start (not (available ?hoist0)))
  (at start (clear ?crate1))
  (at start (not (on ?crate0 ?crate1))))
)
(:durative-action lift_hoist0_crate0_pallet2_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?pallet2 - pallet ?depot0 - depot)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist0))
  (at start (at ?crate0 ?depot0))
  (at start (on ?crate0 ?pallet2))
  (at start (clear ?crate0))
  (over all (at ?hoist0 ?depot0)))
:effect (and 
  (at start (not (at ?crate0 ?depot0)))
  (at start (lifting ?hoist0 ?crate0))
  (at start (not (clear ?crate0)))
  (at start (not (available ?hoist0)))
  (at start (clear ?pallet2))
  (at start (not (on ?crate0 ?pallet2))))
)
(:durative-action drop_hoist0_crate1_crate0_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?crate0 - crate ?depot0 - depot)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (over all (at ?hoist0 ?depot0))
  (over all (at ?crate0 ?depot0))
  (over all (clear ?crate0))
  (over all (lifting ?hoist0 ?crate1)))
:effect (and 
  (at end (available ?hoist0))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (at ?crate1 ?depot0))
  (at end (not (clear ?crate0)))
  (at end (clear ?crate1))
  (at end (on ?crate1 ?crate0)))
)
(:durative-action lift_hoist1_crate0_pallet0_distributor0
:parameters (?hoist1 - hoist ?crate0 - crate ?pallet0 - pallet ?distributor0 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist1))
  (at start (at ?crate0 ?distributor0))
  (at start (on ?crate0 ?pallet0))
  (at start (clear ?crate0))
  (over all (at ?hoist1 ?distributor0)))
:effect (and 
  (at start (not (at ?crate0 ?distributor0)))
  (at start (lifting ?hoist1 ?crate0))
  (at start (not (clear ?crate0)))
  (at start (not (available ?hoist1)))
  (at start (clear ?pallet0))
  (at start (not (on ?crate0 ?pallet0))))
)
(:durative-action lift_hoist2_crate0_pallet0_distributor1
:parameters (?hoist2 - hoist ?crate0 - crate ?pallet0 - pallet ?distributor1 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist2))
  (at start (at ?crate0 ?distributor1))
  (at start (on ?crate0 ?pallet0))
  (at start (clear ?crate0))
  (over all (at ?hoist2 ?distributor1)))
:effect (and 
  (at start (not (at ?crate0 ?distributor1)))
  (at start (lifting ?hoist2 ?crate0))
  (at start (not (clear ?crate0)))
  (at start (not (available ?hoist2)))
  (at start (clear ?pallet0))
  (at start (not (on ?crate0 ?pallet0))))
)
(:durative-action lift_hoist1_crate0_crate1_distributor0
:parameters (?hoist1 - hoist ?crate0 - crate ?crate1 - crate ?distributor0 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist1))
  (at start (at ?crate0 ?distributor0))
  (at start (on ?crate0 ?crate1))
  (at start (clear ?crate0))
  (over all (at ?hoist1 ?distributor0)))
:effect (and 
  (at start (not (at ?crate0 ?distributor0)))
  (at start (lifting ?hoist1 ?crate0))
  (at start (not (clear ?crate0)))
  (at start (not (available ?hoist1)))
  (at start (clear ?crate1))
  (at start (not (on ?crate0 ?crate1))))
)
(:durative-action lift_hoist2_crate0_crate1_distributor1
:parameters (?hoist2 - hoist ?crate0 - crate ?crate1 - crate ?distributor1 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist2))
  (at start (at ?crate0 ?distributor1))
  (at start (on ?crate0 ?crate1))
  (at start (clear ?crate0))
  (over all (at ?hoist2 ?distributor1)))
:effect (and 
  (at start (not (at ?crate0 ?distributor1)))
  (at start (lifting ?hoist2 ?crate0))
  (at start (not (clear ?crate0)))
  (at start (not (available ?hoist2)))
  (at start (clear ?crate1))
  (at start (not (on ?crate0 ?crate1))))
)
(:durative-action lift_hoist2_crate0_pallet1_distributor1
:parameters (?hoist2 - hoist ?crate0 - crate ?pallet1 - pallet ?distributor1 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist2))
  (at start (at ?crate0 ?distributor1))
  (at start (on ?crate0 ?pallet1))
  (at start (clear ?crate0))
  (over all (at ?hoist2 ?distributor1)))
:effect (and 
  (at start (not (at ?crate0 ?distributor1)))
  (at start (lifting ?hoist2 ?crate0))
  (at start (not (clear ?crate0)))
  (at start (not (available ?hoist2)))
  (at start (clear ?pallet1))
  (at start (not (on ?crate0 ?pallet1))))
)
(:durative-action lift_hoist2_crate0_pallet2_distributor1
:parameters (?hoist2 - hoist ?crate0 - crate ?pallet2 - pallet ?distributor1 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist2))
  (at start (at ?crate0 ?distributor1))
  (at start (on ?crate0 ?pallet2))
  (at start (clear ?crate0))
  (over all (at ?hoist2 ?distributor1)))
:effect (and 
  (at start (not (at ?crate0 ?distributor1)))
  (at start (lifting ?hoist2 ?crate0))
  (at start (not (clear ?crate0)))
  (at start (not (available ?hoist2)))
  (at start (clear ?pallet2))
  (at start (not (on ?crate0 ?pallet2))))
)
(:durative-action drop_hoist2_crate1_crate0_distributor1
:parameters (?hoist2 - hoist ?crate1 - crate ?crate0 - crate ?distributor1 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (over all (at ?hoist2 ?distributor1))
  (over all (at ?crate0 ?distributor1))
  (over all (clear ?crate0))
  (over all (lifting ?hoist2 ?crate1)))
:effect (and 
  (at end (available ?hoist2))
  (at end (not (lifting ?hoist2 ?crate1)))
  (at end (at ?crate1 ?distributor1))
  (at end (not (clear ?crate0)))
  (at end (clear ?crate1))
  (at end (on ?crate1 ?crate0)))
)
(:durative-action lift_hoist1_crate0_pallet2_distributor0
:parameters (?hoist1 - hoist ?crate0 - crate ?pallet2 - pallet ?distributor0 - distributor)
:duration (= ?duration (duration-lift-drop))
:condition (and 
  (at start (available ?hoist1))
  (at start (at ?crate0 ?distributor0))
  (at start (on ?crate0 ?pallet2))
  (at start (clear ?crate0))
  (over all (at ?hoist1 ?distributor0)))
:effect (and 
  (at start (not (at ?crate0 ?distributor0)))
  (at start (lifting ?hoist1 ?crate0))
  (at start (not (clear ?crate0)))
  (at start (not (available ?hoist1)))
  (at start (clear ?pallet2))
  (at start (not (on ?crate0 ?pallet2))))
)
)
