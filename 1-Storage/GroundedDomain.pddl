(define (domain storage-time)
(:requirements :typing :durative-actions)
(:types
  item - object
  agent - object
  storage - object
  crate - item
  lifting_device - agent
  hoist - lifting_device
  storage_place - storage
  section - storage
  terminal - storage
  depot - storage_place
  container - storage_place
)
(:constants
  depot0-1-1 - section
  depot0-1-2 - section
  depot0-2-1 - section
  depot0-2-2 - section
  depot1-1-1 - section
  depot1-1-2 - section
  depot1-2-1 - section
  depot1-2-2 - section
  container-0-0 - section
  container-0-1 - section
  container-0-2 - section
  container-0-3 - section
  container-1-0 - section
  container-1-1 - section
  container-1-2 - section
  container-1-3 - section
  hoist0 - hoist
  hoist1 - hoist
  crate0 - crate
  crate1 - crate
  crate2 - crate
  crate3 - crate
  crate4 - crate
  crate5 - crate
  crate6 - crate
  crate7 - crate
  container0 - container
  container1 - container
  depot0 - depot
  depot1 - depot
  terminal1 - terminal
  terminal0 - terminal
)
(:predicates
  (in ?x - item ?y - section)
  (placed ?x - item ?y - storage_place)
  (at ?x - container ?y - terminal)
  (location ?x - section ?y - storage_place)
  (clear ?x - section)
  (available ?x - agent)
  (lifting ?x - lifting_device ?y - item)
  (position ?x - agent ?y - section)
  (inner-link ?x - section ?a2 - section)
  (outer-link ?x - (either terminal depot) ?a2 - (either depot terminal))
)
(:durative-action go-out_hoist1_depot0-1-1_depot0_container-0-0_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-1-1 - section ?depot0 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-1-1)))
  (at end (position ?hoist1 ?container-0-0)))
)
(:durative-action go-out_hoist1_depot0-1-1_depot0_container-0-1_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-1-1 - section ?depot0 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-1-1)))
  (at end (position ?hoist1 ?container-0-1)))
)
(:durative-action go-out_hoist1_depot0-1-1_depot0_container-0-2_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-1-1 - section ?depot0 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-1-1)))
  (at end (position ?hoist1 ?container-0-2)))
)
(:durative-action go-out_hoist1_depot0-1-1_depot0_container-0-3_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-1-1 - section ?depot0 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-1-1)))
  (at end (position ?hoist1 ?container-0-3)))
)
(:durative-action go-out_hoist0_depot0-2-2_depot0_container-0-0_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-2-2 - section ?depot0 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-2-2)))
  (at end (position ?hoist0 ?container-0-0)))
)
(:durative-action go-out_hoist0_depot0-2-2_depot0_container-0-1_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-2-2 - section ?depot0 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-2-2)))
  (at end (position ?hoist0 ?container-0-1)))
)
(:durative-action go-out_hoist0_depot0-2-2_depot0_container-0-2_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-2-2 - section ?depot0 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-2-2)))
  (at end (position ?hoist0 ?container-0-2)))
)
(:durative-action go-out_hoist0_depot0-2-2_depot0_container-0-3_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-2-2 - section ?depot0 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-2-2)))
  (at end (position ?hoist0 ?container-0-3)))
)
(:durative-action move_hoist1_depot0-1-1_depot0-2-1
:parameters (?hoist1 - hoist ?depot0-1-1 - section ?depot0-2-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-1-1))
  (over all (inner-link ?depot0-1-1 ?depot0-2-1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-1-1)))
  (at end (position ?hoist1 ?depot0-2-1)))
)
(:durative-action move_hoist1_depot0-1-1_depot0-1-2
:parameters (?hoist1 - hoist ?depot0-1-1 - section ?depot0-1-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-1-1))
  (over all (inner-link ?depot0-1-1 ?depot0-1-2)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-1-1)))
  (at end (position ?hoist1 ?depot0-1-2)))
)
(:durative-action move_hoist0_depot0-2-2_depot0-1-2
:parameters (?hoist0 - hoist ?depot0-2-2 - section ?depot0-1-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-2-2))
  (over all (inner-link ?depot0-2-2 ?depot0-1-2)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-2-2)))
  (at end (position ?hoist0 ?depot0-1-2)))
)
(:durative-action move_hoist0_depot0-2-2_depot0-2-1
:parameters (?hoist0 - hoist ?depot0-2-2 - section ?depot0-2-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-2-2))
  (over all (inner-link ?depot0-2-2 ?depot0-2-1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-2-2)))
  (at end (position ?hoist0 ?depot0-2-1)))
)
(:durative-action lift_hoist1_crate0_container-0-0_container0
:parameters (?hoist1 - hoist ?crate0 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?container-0-0))
  (at start (placed ?crate0 ?container0))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate0 ?container0))))
)
(:durative-action move_hoist1_container-0-0_container-0-1
:parameters (?hoist1 - hoist ?container-0-0 - section ?container-0-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-0))
  (over all (inner-link ?container-0-0 ?container-0-1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-0)))
  (at end (position ?hoist1 ?container-0-1)))
)
(:durative-action move_hoist1_container-0-0_container-0-2
:parameters (?hoist1 - hoist ?container-0-0 - section ?container-0-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-0))
  (over all (inner-link ?container-0-0 ?container-0-2)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-0)))
  (at end (position ?hoist1 ?container-0-2)))
)
(:durative-action go-in_hoist1_container-0-0_container0_terminal0_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-0)))
  (at end (position ?hoist1 ?depot0-1-1)))
)
(:durative-action go-in_hoist1_container-0-0_container0_terminal0_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-0)))
  (at end (position ?hoist1 ?depot0-1-2)))
)
(:durative-action go-in_hoist1_container-0-0_container0_terminal0_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-0)))
  (at end (position ?hoist1 ?depot0-2-1)))
)
(:durative-action go-in_hoist1_container-0-0_container0_terminal0_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-0)))
  (at end (position ?hoist1 ?depot0-2-2)))
)
(:durative-action go-in_hoist1_container-0-0_container0_terminal0_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-0)))
  (at end (position ?hoist1 ?depot1-1-1)))
)
(:durative-action go-in_hoist1_container-0-0_container0_terminal0_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-0)))
  (at end (position ?hoist1 ?depot1-1-2)))
)
(:durative-action go-in_hoist1_container-0-0_container0_terminal0_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-0)))
  (at end (position ?hoist1 ?depot1-2-1)))
)
(:durative-action go-in_hoist1_container-0-0_container0_terminal0_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-0)))
  (at end (position ?hoist1 ?depot1-2-2)))
)
(:durative-action lift_hoist1_crate1_container-0-1_container0
:parameters (?hoist1 - hoist ?crate1 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?container-0-1))
  (at start (placed ?crate1 ?container0))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate1 ?container0))))
)
(:durative-action move_hoist1_container-0-1_container-0-0
:parameters (?hoist1 - hoist ?container-0-1 - section ?container-0-0 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-1))
  (over all (inner-link ?container-0-1 ?container-0-0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-1)))
  (at end (position ?hoist1 ?container-0-0)))
)
(:durative-action move_hoist1_container-0-1_container-0-3
:parameters (?hoist1 - hoist ?container-0-1 - section ?container-0-3 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-1))
  (over all (inner-link ?container-0-1 ?container-0-3)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-1)))
  (at end (position ?hoist1 ?container-0-3)))
)
(:durative-action go-in_hoist1_container-0-1_container0_terminal0_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-1)))
  (at end (position ?hoist1 ?depot0-1-1)))
)
(:durative-action go-in_hoist1_container-0-1_container0_terminal0_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-1)))
  (at end (position ?hoist1 ?depot0-1-2)))
)
(:durative-action go-in_hoist1_container-0-1_container0_terminal0_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-1)))
  (at end (position ?hoist1 ?depot0-2-1)))
)
(:durative-action go-in_hoist1_container-0-1_container0_terminal0_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-1)))
  (at end (position ?hoist1 ?depot0-2-2)))
)
(:durative-action go-in_hoist1_container-0-1_container0_terminal0_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-1)))
  (at end (position ?hoist1 ?depot1-1-1)))
)
(:durative-action go-in_hoist1_container-0-1_container0_terminal0_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-1)))
  (at end (position ?hoist1 ?depot1-1-2)))
)
(:durative-action go-in_hoist1_container-0-1_container0_terminal0_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-1)))
  (at end (position ?hoist1 ?depot1-2-1)))
)
(:durative-action go-in_hoist1_container-0-1_container0_terminal0_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-1)))
  (at end (position ?hoist1 ?depot1-2-2)))
)
(:durative-action lift_hoist1_crate2_container-0-2_container0
:parameters (?hoist1 - hoist ?crate2 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?container-0-2))
  (at start (placed ?crate2 ?container0))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate2 ?container0))))
)
(:durative-action move_hoist1_container-0-2_container-0-0
:parameters (?hoist1 - hoist ?container-0-2 - section ?container-0-0 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-2))
  (over all (inner-link ?container-0-2 ?container-0-0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-2)))
  (at end (position ?hoist1 ?container-0-0)))
)
(:durative-action move_hoist1_container-0-2_container-0-3
:parameters (?hoist1 - hoist ?container-0-2 - section ?container-0-3 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-2))
  (over all (inner-link ?container-0-2 ?container-0-3)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-2)))
  (at end (position ?hoist1 ?container-0-3)))
)
(:durative-action go-in_hoist1_container-0-2_container0_terminal0_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-2)))
  (at end (position ?hoist1 ?depot0-1-1)))
)
(:durative-action go-in_hoist1_container-0-2_container0_terminal0_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-2)))
  (at end (position ?hoist1 ?depot0-1-2)))
)
(:durative-action go-in_hoist1_container-0-2_container0_terminal0_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-2)))
  (at end (position ?hoist1 ?depot0-2-1)))
)
(:durative-action go-in_hoist1_container-0-2_container0_terminal0_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-2)))
  (at end (position ?hoist1 ?depot0-2-2)))
)
(:durative-action go-in_hoist1_container-0-2_container0_terminal0_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-2)))
  (at end (position ?hoist1 ?depot1-1-1)))
)
(:durative-action go-in_hoist1_container-0-2_container0_terminal0_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-2)))
  (at end (position ?hoist1 ?depot1-1-2)))
)
(:durative-action go-in_hoist1_container-0-2_container0_terminal0_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-2)))
  (at end (position ?hoist1 ?depot1-2-1)))
)
(:durative-action go-in_hoist1_container-0-2_container0_terminal0_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-2)))
  (at end (position ?hoist1 ?depot1-2-2)))
)
(:durative-action lift_hoist1_crate3_container-0-3_container0
:parameters (?hoist1 - hoist ?crate3 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?container-0-3))
  (at start (placed ?crate3 ?container0))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate3 ?container0))))
)
(:durative-action move_hoist1_container-0-3_container-0-1
:parameters (?hoist1 - hoist ?container-0-3 - section ?container-0-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-3))
  (over all (inner-link ?container-0-3 ?container-0-1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-3)))
  (at end (position ?hoist1 ?container-0-1)))
)
(:durative-action move_hoist1_container-0-3_container-0-2
:parameters (?hoist1 - hoist ?container-0-3 - section ?container-0-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-3))
  (over all (inner-link ?container-0-3 ?container-0-2)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-3)))
  (at end (position ?hoist1 ?container-0-2)))
)
(:durative-action go-in_hoist1_container-0-3_container0_terminal0_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-3)))
  (at end (position ?hoist1 ?depot0-1-1)))
)
(:durative-action go-in_hoist1_container-0-3_container0_terminal0_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-3)))
  (at end (position ?hoist1 ?depot0-1-2)))
)
(:durative-action go-in_hoist1_container-0-3_container0_terminal0_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-3)))
  (at end (position ?hoist1 ?depot0-2-1)))
)
(:durative-action go-in_hoist1_container-0-3_container0_terminal0_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-3)))
  (at end (position ?hoist1 ?depot0-2-2)))
)
(:durative-action go-in_hoist1_container-0-3_container0_terminal0_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-3)))
  (at end (position ?hoist1 ?depot1-1-1)))
)
(:durative-action go-in_hoist1_container-0-3_container0_terminal0_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-3)))
  (at end (position ?hoist1 ?depot1-1-2)))
)
(:durative-action go-in_hoist1_container-0-3_container0_terminal0_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-3)))
  (at end (position ?hoist1 ?depot1-2-1)))
)
(:durative-action go-in_hoist1_container-0-3_container0_terminal0_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-0-3)))
  (at end (position ?hoist1 ?depot1-2-2)))
)
(:durative-action lift_hoist0_crate0_container-0-0_container0
:parameters (?hoist0 - hoist ?crate0 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?container-0-0))
  (at start (placed ?crate0 ?container0))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate0 ?container0))))
)
(:durative-action move_hoist0_container-0-0_container-0-1
:parameters (?hoist0 - hoist ?container-0-0 - section ?container-0-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-0))
  (over all (inner-link ?container-0-0 ?container-0-1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-0)))
  (at end (position ?hoist0 ?container-0-1)))
)
(:durative-action move_hoist0_container-0-0_container-0-2
:parameters (?hoist0 - hoist ?container-0-0 - section ?container-0-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-0))
  (over all (inner-link ?container-0-0 ?container-0-2)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-0)))
  (at end (position ?hoist0 ?container-0-2)))
)
(:durative-action go-in_hoist0_container-0-0_container0_terminal0_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-0)))
  (at end (position ?hoist0 ?depot0-1-1)))
)
(:durative-action go-in_hoist0_container-0-0_container0_terminal0_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-0)))
  (at end (position ?hoist0 ?depot0-1-2)))
)
(:durative-action go-in_hoist0_container-0-0_container0_terminal0_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-0)))
  (at end (position ?hoist0 ?depot0-2-1)))
)
(:durative-action go-in_hoist0_container-0-0_container0_terminal0_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-0)))
  (at end (position ?hoist0 ?depot0-2-2)))
)
(:durative-action go-in_hoist0_container-0-0_container0_terminal0_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-0)))
  (at end (position ?hoist0 ?depot1-1-1)))
)
(:durative-action go-in_hoist0_container-0-0_container0_terminal0_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-0)))
  (at end (position ?hoist0 ?depot1-1-2)))
)
(:durative-action go-in_hoist0_container-0-0_container0_terminal0_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-0)))
  (at end (position ?hoist0 ?depot1-2-1)))
)
(:durative-action go-in_hoist0_container-0-0_container0_terminal0_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?container-0-0 - section ?container0 - container ?terminal0 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-0)))
  (at end (position ?hoist0 ?depot1-2-2)))
)
(:durative-action lift_hoist0_crate1_container-0-1_container0
:parameters (?hoist0 - hoist ?crate1 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?container-0-1))
  (at start (placed ?crate1 ?container0))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate1 ?container0))))
)
(:durative-action move_hoist0_container-0-1_container-0-0
:parameters (?hoist0 - hoist ?container-0-1 - section ?container-0-0 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-1))
  (over all (inner-link ?container-0-1 ?container-0-0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-1)))
  (at end (position ?hoist0 ?container-0-0)))
)
(:durative-action move_hoist0_container-0-1_container-0-3
:parameters (?hoist0 - hoist ?container-0-1 - section ?container-0-3 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-1))
  (over all (inner-link ?container-0-1 ?container-0-3)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-1)))
  (at end (position ?hoist0 ?container-0-3)))
)
(:durative-action go-in_hoist0_container-0-1_container0_terminal0_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-1)))
  (at end (position ?hoist0 ?depot0-1-1)))
)
(:durative-action go-in_hoist0_container-0-1_container0_terminal0_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-1)))
  (at end (position ?hoist0 ?depot0-1-2)))
)
(:durative-action go-in_hoist0_container-0-1_container0_terminal0_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-1)))
  (at end (position ?hoist0 ?depot0-2-1)))
)
(:durative-action go-in_hoist0_container-0-1_container0_terminal0_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-1)))
  (at end (position ?hoist0 ?depot0-2-2)))
)
(:durative-action go-in_hoist0_container-0-1_container0_terminal0_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-1)))
  (at end (position ?hoist0 ?depot1-1-1)))
)
(:durative-action go-in_hoist0_container-0-1_container0_terminal0_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-1)))
  (at end (position ?hoist0 ?depot1-1-2)))
)
(:durative-action go-in_hoist0_container-0-1_container0_terminal0_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-1)))
  (at end (position ?hoist0 ?depot1-2-1)))
)
(:durative-action go-in_hoist0_container-0-1_container0_terminal0_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?container-0-1 - section ?container0 - container ?terminal0 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-1)))
  (at end (position ?hoist0 ?depot1-2-2)))
)
(:durative-action lift_hoist0_crate2_container-0-2_container0
:parameters (?hoist0 - hoist ?crate2 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?container-0-2))
  (at start (placed ?crate2 ?container0))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate2 ?container0))))
)
(:durative-action move_hoist0_container-0-2_container-0-0
:parameters (?hoist0 - hoist ?container-0-2 - section ?container-0-0 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-2))
  (over all (inner-link ?container-0-2 ?container-0-0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-2)))
  (at end (position ?hoist0 ?container-0-0)))
)
(:durative-action move_hoist0_container-0-2_container-0-3
:parameters (?hoist0 - hoist ?container-0-2 - section ?container-0-3 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-2))
  (over all (inner-link ?container-0-2 ?container-0-3)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-2)))
  (at end (position ?hoist0 ?container-0-3)))
)
(:durative-action go-in_hoist0_container-0-2_container0_terminal0_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-2)))
  (at end (position ?hoist0 ?depot0-1-1)))
)
(:durative-action go-in_hoist0_container-0-2_container0_terminal0_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-2)))
  (at end (position ?hoist0 ?depot0-1-2)))
)
(:durative-action go-in_hoist0_container-0-2_container0_terminal0_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-2)))
  (at end (position ?hoist0 ?depot0-2-1)))
)
(:durative-action go-in_hoist0_container-0-2_container0_terminal0_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-2)))
  (at end (position ?hoist0 ?depot0-2-2)))
)
(:durative-action go-in_hoist0_container-0-2_container0_terminal0_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-2)))
  (at end (position ?hoist0 ?depot1-1-1)))
)
(:durative-action go-in_hoist0_container-0-2_container0_terminal0_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-2)))
  (at end (position ?hoist0 ?depot1-1-2)))
)
(:durative-action go-in_hoist0_container-0-2_container0_terminal0_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-2)))
  (at end (position ?hoist0 ?depot1-2-1)))
)
(:durative-action go-in_hoist0_container-0-2_container0_terminal0_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?container-0-2 - section ?container0 - container ?terminal0 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-2)))
  (at end (position ?hoist0 ?depot1-2-2)))
)
(:durative-action lift_hoist0_crate3_container-0-3_container0
:parameters (?hoist0 - hoist ?crate3 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?container-0-3))
  (at start (placed ?crate3 ?container0))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate3 ?container0))))
)
(:durative-action move_hoist0_container-0-3_container-0-1
:parameters (?hoist0 - hoist ?container-0-3 - section ?container-0-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-3))
  (over all (inner-link ?container-0-3 ?container-0-1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-3)))
  (at end (position ?hoist0 ?container-0-1)))
)
(:durative-action move_hoist0_container-0-3_container-0-2
:parameters (?hoist0 - hoist ?container-0-3 - section ?container-0-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-3))
  (over all (inner-link ?container-0-3 ?container-0-2)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-3)))
  (at end (position ?hoist0 ?container-0-2)))
)
(:durative-action go-in_hoist0_container-0-3_container0_terminal0_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-3)))
  (at end (position ?hoist0 ?depot0-1-1)))
)
(:durative-action go-in_hoist0_container-0-3_container0_terminal0_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-3)))
  (at end (position ?hoist0 ?depot0-1-2)))
)
(:durative-action go-in_hoist0_container-0-3_container0_terminal0_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-3)))
  (at end (position ?hoist0 ?depot0-2-1)))
)
(:durative-action go-in_hoist0_container-0-3_container0_terminal0_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (outer-link ?terminal0 ?depot0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-3)))
  (at end (position ?hoist0 ?depot0-2-2)))
)
(:durative-action go-in_hoist0_container-0-3_container0_terminal0_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-3)))
  (at end (position ?hoist0 ?depot1-1-1)))
)
(:durative-action go-in_hoist0_container-0-3_container0_terminal0_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-3)))
  (at end (position ?hoist0 ?depot1-1-2)))
)
(:durative-action go-in_hoist0_container-0-3_container0_terminal0_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-3)))
  (at end (position ?hoist0 ?depot1-2-1)))
)
(:durative-action go-in_hoist0_container-0-3_container0_terminal0_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?container-0-3 - section ?container0 - container ?terminal0 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal0 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-0-3)))
  (at end (position ?hoist0 ?depot1-2-2)))
)
(:durative-action move_hoist1_depot0-2-1_depot0-1-1
:parameters (?hoist1 - hoist ?depot0-2-1 - section ?depot0-1-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-2-1))
  (over all (inner-link ?depot0-2-1 ?depot0-1-1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-2-1)))
  (at end (position ?hoist1 ?depot0-1-1)))
)
(:durative-action move_hoist1_depot0-2-1_depot0-2-2
:parameters (?hoist1 - hoist ?depot0-2-1 - section ?depot0-2-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-2-1))
  (over all (inner-link ?depot0-2-1 ?depot0-2-2)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-2-1)))
  (at end (position ?hoist1 ?depot0-2-2)))
)
(:durative-action go-out_hoist1_depot0-2-1_depot0_container-0-0_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-2-1 - section ?depot0 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-2-1)))
  (at end (position ?hoist1 ?container-0-0)))
)
(:durative-action go-out_hoist1_depot0-2-1_depot0_container-0-1_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-2-1 - section ?depot0 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-2-1)))
  (at end (position ?hoist1 ?container-0-1)))
)
(:durative-action go-out_hoist1_depot0-2-1_depot0_container-0-2_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-2-1 - section ?depot0 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-2-1)))
  (at end (position ?hoist1 ?container-0-2)))
)
(:durative-action go-out_hoist1_depot0-2-1_depot0_container-0-3_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-2-1 - section ?depot0 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-2-1)))
  (at end (position ?hoist1 ?container-0-3)))
)
(:durative-action move_hoist1_depot0-1-2_depot0-1-1
:parameters (?hoist1 - hoist ?depot0-1-2 - section ?depot0-1-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-1-2))
  (over all (inner-link ?depot0-1-2 ?depot0-1-1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-1-2)))
  (at end (position ?hoist1 ?depot0-1-1)))
)
(:durative-action move_hoist1_depot0-1-2_depot0-2-2
:parameters (?hoist1 - hoist ?depot0-1-2 - section ?depot0-2-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-1-2))
  (over all (inner-link ?depot0-1-2 ?depot0-2-2)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-1-2)))
  (at end (position ?hoist1 ?depot0-2-2)))
)
(:durative-action go-out_hoist1_depot0-1-2_depot0_container-0-0_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-1-2 - section ?depot0 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-1-2)))
  (at end (position ?hoist1 ?container-0-0)))
)
(:durative-action go-out_hoist1_depot0-1-2_depot0_container-0-1_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-1-2 - section ?depot0 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-1-2)))
  (at end (position ?hoist1 ?container-0-1)))
)
(:durative-action go-out_hoist1_depot0-1-2_depot0_container-0-2_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-1-2 - section ?depot0 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-1-2)))
  (at end (position ?hoist1 ?container-0-2)))
)
(:durative-action go-out_hoist1_depot0-1-2_depot0_container-0-3_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-1-2 - section ?depot0 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-1-2)))
  (at end (position ?hoist1 ?container-0-3)))
)
(:durative-action move_hoist0_depot0-1-2_depot0-1-1
:parameters (?hoist0 - hoist ?depot0-1-2 - section ?depot0-1-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-1-2))
  (over all (inner-link ?depot0-1-2 ?depot0-1-1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-1-2)))
  (at end (position ?hoist0 ?depot0-1-1)))
)
(:durative-action move_hoist0_depot0-1-2_depot0-2-2
:parameters (?hoist0 - hoist ?depot0-1-2 - section ?depot0-2-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-1-2))
  (over all (inner-link ?depot0-1-2 ?depot0-2-2)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-1-2)))
  (at end (position ?hoist0 ?depot0-2-2)))
)
(:durative-action go-out_hoist0_depot0-1-2_depot0_container-0-0_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-1-2 - section ?depot0 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-1-2)))
  (at end (position ?hoist0 ?container-0-0)))
)
(:durative-action go-out_hoist0_depot0-1-2_depot0_container-0-1_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-1-2 - section ?depot0 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-1-2)))
  (at end (position ?hoist0 ?container-0-1)))
)
(:durative-action go-out_hoist0_depot0-1-2_depot0_container-0-2_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-1-2 - section ?depot0 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-1-2)))
  (at end (position ?hoist0 ?container-0-2)))
)
(:durative-action go-out_hoist0_depot0-1-2_depot0_container-0-3_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-1-2 - section ?depot0 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-1-2)))
  (at end (position ?hoist0 ?container-0-3)))
)
(:durative-action move_hoist0_depot0-2-1_depot0-1-1
:parameters (?hoist0 - hoist ?depot0-2-1 - section ?depot0-1-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-2-1))
  (over all (inner-link ?depot0-2-1 ?depot0-1-1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-2-1)))
  (at end (position ?hoist0 ?depot0-1-1)))
)
(:durative-action move_hoist0_depot0-2-1_depot0-2-2
:parameters (?hoist0 - hoist ?depot0-2-1 - section ?depot0-2-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-2-1))
  (over all (inner-link ?depot0-2-1 ?depot0-2-2)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-2-1)))
  (at end (position ?hoist0 ?depot0-2-2)))
)
(:durative-action go-out_hoist0_depot0-2-1_depot0_container-0-0_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-2-1 - section ?depot0 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-2-1)))
  (at end (position ?hoist0 ?container-0-0)))
)
(:durative-action go-out_hoist0_depot0-2-1_depot0_container-0-1_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-2-1 - section ?depot0 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-2-1)))
  (at end (position ?hoist0 ?container-0-1)))
)
(:durative-action go-out_hoist0_depot0-2-1_depot0_container-0-2_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-2-1 - section ?depot0 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-2-1)))
  (at end (position ?hoist0 ?container-0-2)))
)
(:durative-action go-out_hoist0_depot0-2-1_depot0_container-0-3_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-2-1 - section ?depot0 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-2-1)))
  (at end (position ?hoist0 ?container-0-3)))
)
(:durative-action drop_hoist1_crate0_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate0 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?depot0-2-1))
  (at end (placed ?crate0 ?depot0)))
)
(:durative-action drop_hoist1_crate0_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate0 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?depot0-1-2))
  (at end (placed ?crate0 ?depot0)))
)
(:durative-action drop_hoist1_crate0_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate0 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?depot1-1-1))
  (at end (placed ?crate0 ?depot1)))
)
(:durative-action drop_hoist1_crate0_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate0 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?depot1-1-2))
  (at end (placed ?crate0 ?depot1)))
)
(:durative-action drop_hoist1_crate0_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate0 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?depot1-2-1))
  (at end (placed ?crate0 ?depot1)))
)
(:durative-action drop_hoist1_crate0_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate0 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?depot1-2-2))
  (at end (placed ?crate0 ?depot1)))
)
(:durative-action drop_hoist1_crate0_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate0 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?depot0-1-1))
  (at end (placed ?crate0 ?depot0)))
)
(:durative-action drop_hoist1_crate0_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate0 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?depot0-2-2))
  (at end (placed ?crate0 ?depot0)))
)
(:durative-action drop_hoist1_crate0_container-0-0_container0
:parameters (?hoist1 - hoist ?crate0 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?container-0-0))
  (at end (placed ?crate0 ?container0)))
)
(:durative-action drop_hoist1_crate0_container-0-1_container0
:parameters (?hoist1 - hoist ?crate0 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?container-0-1))
  (at end (placed ?crate0 ?container0)))
)
(:durative-action drop_hoist1_crate0_container-0-2_container0
:parameters (?hoist1 - hoist ?crate0 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?container-0-2))
  (at end (placed ?crate0 ?container0)))
)
(:durative-action drop_hoist1_crate0_container-0-3_container0
:parameters (?hoist1 - hoist ?crate0 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?container-0-3))
  (at end (placed ?crate0 ?container0)))
)
(:durative-action drop_hoist1_crate1_container-0-0_container0
:parameters (?hoist1 - hoist ?crate1 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?container-0-0))
  (at end (placed ?crate1 ?container0)))
)
(:durative-action drop_hoist1_crate2_container-0-0_container0
:parameters (?hoist1 - hoist ?crate2 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?container-0-0))
  (at end (placed ?crate2 ?container0)))
)
(:durative-action drop_hoist1_crate3_container-0-0_container0
:parameters (?hoist1 - hoist ?crate3 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?container-0-0))
  (at end (placed ?crate3 ?container0)))
)
(:durative-action drop_hoist0_crate0_container-0-0_container0
:parameters (?hoist0 - hoist ?crate0 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?container-0-0))
  (at end (placed ?crate0 ?container0)))
)
(:durative-action drop_hoist0_crate1_container-0-0_container0
:parameters (?hoist0 - hoist ?crate1 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?container-0-0))
  (at end (placed ?crate1 ?container0)))
)
(:durative-action drop_hoist0_crate2_container-0-0_container0
:parameters (?hoist0 - hoist ?crate2 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?container-0-0))
  (at end (placed ?crate2 ?container0)))
)
(:durative-action drop_hoist0_crate3_container-0-0_container0
:parameters (?hoist0 - hoist ?crate3 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?container-0-0))
  (at end (placed ?crate3 ?container0)))
)
(:durative-action drop_hoist1_crate1_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate1 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?depot0-2-2))
  (at end (placed ?crate1 ?depot0)))
)
(:durative-action drop_hoist1_crate2_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate2 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?depot0-2-2))
  (at end (placed ?crate2 ?depot0)))
)
(:durative-action drop_hoist1_crate3_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate3 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?depot0-2-2))
  (at end (placed ?crate3 ?depot0)))
)
(:durative-action move_hoist1_depot0-2-2_depot0-1-2
:parameters (?hoist1 - hoist ?depot0-2-2 - section ?depot0-1-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-2-2))
  (over all (inner-link ?depot0-2-2 ?depot0-1-2)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-2-2)))
  (at end (position ?hoist1 ?depot0-1-2)))
)
(:durative-action move_hoist1_depot0-2-2_depot0-2-1
:parameters (?hoist1 - hoist ?depot0-2-2 - section ?depot0-2-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-2-2))
  (over all (inner-link ?depot0-2-2 ?depot0-2-1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-2-2)))
  (at end (position ?hoist1 ?depot0-2-1)))
)
(:durative-action go-out_hoist1_depot0-2-2_depot0_container-0-0_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-2-2 - section ?depot0 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-2-2)))
  (at end (position ?hoist1 ?container-0-0)))
)
(:durative-action go-out_hoist1_depot0-2-2_depot0_container-0-1_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-2-2 - section ?depot0 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-2-2)))
  (at end (position ?hoist1 ?container-0-1)))
)
(:durative-action go-out_hoist1_depot0-2-2_depot0_container-0-2_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-2-2 - section ?depot0 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-2-2)))
  (at end (position ?hoist1 ?container-0-2)))
)
(:durative-action go-out_hoist1_depot0-2-2_depot0_container-0-3_container0_terminal0
:parameters (?hoist1 - hoist ?depot0-2-2 - section ?depot0 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot0-2-2)))
  (at end (position ?hoist1 ?container-0-3)))
)
(:durative-action drop_hoist1_crate1_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate1 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?depot1-1-1))
  (at end (placed ?crate1 ?depot1)))
)
(:durative-action drop_hoist1_crate2_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate2 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?depot1-1-1))
  (at end (placed ?crate2 ?depot1)))
)
(:durative-action drop_hoist1_crate3_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate3 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?depot1-1-1))
  (at end (placed ?crate3 ?depot1)))
)
(:durative-action move_hoist1_depot1-1-1_depot1-2-1
:parameters (?hoist1 - hoist ?depot1-1-1 - section ?depot1-2-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-1))
  (over all (inner-link ?depot1-1-1 ?depot1-2-1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-1)))
  (at end (position ?hoist1 ?depot1-2-1)))
)
(:durative-action move_hoist1_depot1-1-1_depot1-1-2
:parameters (?hoist1 - hoist ?depot1-1-1 - section ?depot1-1-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-1))
  (over all (inner-link ?depot1-1-1 ?depot1-1-2)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-1)))
  (at end (position ?hoist1 ?depot1-1-2)))
)
(:durative-action go-out_hoist1_depot1-1-1_depot1_container-0-0_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-1)))
  (at end (position ?hoist1 ?container-0-0)))
)
(:durative-action go-out_hoist1_depot1-1-1_depot1_container-0-1_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-1)))
  (at end (position ?hoist1 ?container-0-1)))
)
(:durative-action go-out_hoist1_depot1-1-1_depot1_container-0-2_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-1)))
  (at end (position ?hoist1 ?container-0-2)))
)
(:durative-action go-out_hoist1_depot1-1-1_depot1_container-0-3_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-1)))
  (at end (position ?hoist1 ?container-0-3)))
)
(:durative-action go-out_hoist1_depot1-1-1_depot1_container-1-0_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-1-0 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-1)))
  (at end (position ?hoist1 ?container-1-0)))
)
(:durative-action go-out_hoist1_depot1-1-1_depot1_container-1-1_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-1-1 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-1)))
  (at end (position ?hoist1 ?container-1-1)))
)
(:durative-action go-out_hoist1_depot1-1-1_depot1_container-1-2_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-1-2 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-1)))
  (at end (position ?hoist1 ?container-1-2)))
)
(:durative-action go-out_hoist1_depot1-1-1_depot1_container-1-3_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-1-3 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-1)))
  (at end (position ?hoist1 ?container-1-3)))
)
(:durative-action drop_hoist1_crate1_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate1 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?depot1-1-2))
  (at end (placed ?crate1 ?depot1)))
)
(:durative-action drop_hoist1_crate2_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate2 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?depot1-1-2))
  (at end (placed ?crate2 ?depot1)))
)
(:durative-action drop_hoist1_crate3_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate3 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?depot1-1-2))
  (at end (placed ?crate3 ?depot1)))
)
(:durative-action move_hoist1_depot1-1-2_depot1-1-1
:parameters (?hoist1 - hoist ?depot1-1-2 - section ?depot1-1-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-2))
  (over all (inner-link ?depot1-1-2 ?depot1-1-1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-2)))
  (at end (position ?hoist1 ?depot1-1-1)))
)
(:durative-action move_hoist1_depot1-1-2_depot1-2-2
:parameters (?hoist1 - hoist ?depot1-1-2 - section ?depot1-2-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-2))
  (over all (inner-link ?depot1-1-2 ?depot1-2-2)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-2)))
  (at end (position ?hoist1 ?depot1-2-2)))
)
(:durative-action go-out_hoist1_depot1-1-2_depot1_container-0-0_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-2)))
  (at end (position ?hoist1 ?container-0-0)))
)
(:durative-action go-out_hoist1_depot1-1-2_depot1_container-0-1_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-2)))
  (at end (position ?hoist1 ?container-0-1)))
)
(:durative-action go-out_hoist1_depot1-1-2_depot1_container-0-2_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-2)))
  (at end (position ?hoist1 ?container-0-2)))
)
(:durative-action go-out_hoist1_depot1-1-2_depot1_container-0-3_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-2)))
  (at end (position ?hoist1 ?container-0-3)))
)
(:durative-action go-out_hoist1_depot1-1-2_depot1_container-1-0_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-1-0 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-2)))
  (at end (position ?hoist1 ?container-1-0)))
)
(:durative-action go-out_hoist1_depot1-1-2_depot1_container-1-1_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-1-1 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-2)))
  (at end (position ?hoist1 ?container-1-1)))
)
(:durative-action go-out_hoist1_depot1-1-2_depot1_container-1-2_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-1-2 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-2)))
  (at end (position ?hoist1 ?container-1-2)))
)
(:durative-action go-out_hoist1_depot1-1-2_depot1_container-1-3_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-1-3 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-1-2)))
  (at end (position ?hoist1 ?container-1-3)))
)
(:durative-action drop_hoist1_crate1_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate1 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?depot1-2-1))
  (at end (placed ?crate1 ?depot1)))
)
(:durative-action drop_hoist1_crate2_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate2 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?depot1-2-1))
  (at end (placed ?crate2 ?depot1)))
)
(:durative-action drop_hoist1_crate3_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate3 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?depot1-2-1))
  (at end (placed ?crate3 ?depot1)))
)
(:durative-action move_hoist1_depot1-2-1_depot1-1-1
:parameters (?hoist1 - hoist ?depot1-2-1 - section ?depot1-1-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-1))
  (over all (inner-link ?depot1-2-1 ?depot1-1-1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-1)))
  (at end (position ?hoist1 ?depot1-1-1)))
)
(:durative-action move_hoist1_depot1-2-1_depot1-2-2
:parameters (?hoist1 - hoist ?depot1-2-1 - section ?depot1-2-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-1))
  (over all (inner-link ?depot1-2-1 ?depot1-2-2)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-1)))
  (at end (position ?hoist1 ?depot1-2-2)))
)
(:durative-action go-out_hoist1_depot1-2-1_depot1_container-0-0_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-1)))
  (at end (position ?hoist1 ?container-0-0)))
)
(:durative-action go-out_hoist1_depot1-2-1_depot1_container-0-1_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-1)))
  (at end (position ?hoist1 ?container-0-1)))
)
(:durative-action go-out_hoist1_depot1-2-1_depot1_container-0-2_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-1)))
  (at end (position ?hoist1 ?container-0-2)))
)
(:durative-action go-out_hoist1_depot1-2-1_depot1_container-0-3_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-1)))
  (at end (position ?hoist1 ?container-0-3)))
)
(:durative-action go-out_hoist1_depot1-2-1_depot1_container-1-0_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-1-0 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-1)))
  (at end (position ?hoist1 ?container-1-0)))
)
(:durative-action go-out_hoist1_depot1-2-1_depot1_container-1-1_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-1-1 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-1)))
  (at end (position ?hoist1 ?container-1-1)))
)
(:durative-action go-out_hoist1_depot1-2-1_depot1_container-1-2_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-1-2 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-1)))
  (at end (position ?hoist1 ?container-1-2)))
)
(:durative-action go-out_hoist1_depot1-2-1_depot1_container-1-3_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-1-3 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-1)))
  (at end (position ?hoist1 ?container-1-3)))
)
(:durative-action drop_hoist1_crate1_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate1 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?depot1-2-2))
  (at end (placed ?crate1 ?depot1)))
)
(:durative-action drop_hoist1_crate2_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate2 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?depot1-2-2))
  (at end (placed ?crate2 ?depot1)))
)
(:durative-action drop_hoist1_crate3_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate3 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?depot1-2-2))
  (at end (placed ?crate3 ?depot1)))
)
(:durative-action move_hoist1_depot1-2-2_depot1-1-2
:parameters (?hoist1 - hoist ?depot1-2-2 - section ?depot1-1-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-2))
  (over all (inner-link ?depot1-2-2 ?depot1-1-2)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-2)))
  (at end (position ?hoist1 ?depot1-1-2)))
)
(:durative-action move_hoist1_depot1-2-2_depot1-2-1
:parameters (?hoist1 - hoist ?depot1-2-2 - section ?depot1-2-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-2))
  (over all (inner-link ?depot1-2-2 ?depot1-2-1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-2)))
  (at end (position ?hoist1 ?depot1-2-1)))
)
(:durative-action go-out_hoist1_depot1-2-2_depot1_container-0-0_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-2)))
  (at end (position ?hoist1 ?container-0-0)))
)
(:durative-action go-out_hoist1_depot1-2-2_depot1_container-0-1_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-2)))
  (at end (position ?hoist1 ?container-0-1)))
)
(:durative-action go-out_hoist1_depot1-2-2_depot1_container-0-2_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-2)))
  (at end (position ?hoist1 ?container-0-2)))
)
(:durative-action go-out_hoist1_depot1-2-2_depot1_container-0-3_container0_terminal0
:parameters (?hoist1 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-2)))
  (at end (position ?hoist1 ?container-0-3)))
)
(:durative-action go-out_hoist1_depot1-2-2_depot1_container-1-0_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-1-0 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-2)))
  (at end (position ?hoist1 ?container-1-0)))
)
(:durative-action go-out_hoist1_depot1-2-2_depot1_container-1-1_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-1-1 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-2)))
  (at end (position ?hoist1 ?container-1-1)))
)
(:durative-action go-out_hoist1_depot1-2-2_depot1_container-1-2_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-1-2 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-2)))
  (at end (position ?hoist1 ?container-1-2)))
)
(:durative-action go-out_hoist1_depot1-2-2_depot1_container-1-3_container1_terminal1
:parameters (?hoist1 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-1-3 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist1 ?depot1-2-2)))
  (at end (position ?hoist1 ?container-1-3)))
)
(:durative-action drop_hoist1_crate1_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate1 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?depot0-2-1))
  (at end (placed ?crate1 ?depot0)))
)
(:durative-action drop_hoist1_crate1_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate1 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?depot0-1-2))
  (at end (placed ?crate1 ?depot0)))
)
(:durative-action drop_hoist1_crate1_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate1 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?depot0-1-1))
  (at end (placed ?crate1 ?depot0)))
)
(:durative-action drop_hoist1_crate1_container-0-1_container0
:parameters (?hoist1 - hoist ?crate1 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?container-0-1))
  (at end (placed ?crate1 ?container0)))
)
(:durative-action drop_hoist1_crate1_container-0-2_container0
:parameters (?hoist1 - hoist ?crate1 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?container-0-2))
  (at end (placed ?crate1 ?container0)))
)
(:durative-action drop_hoist1_crate1_container-0-3_container0
:parameters (?hoist1 - hoist ?crate1 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?container-0-3))
  (at end (placed ?crate1 ?container0)))
)
(:durative-action drop_hoist1_crate2_container-0-1_container0
:parameters (?hoist1 - hoist ?crate2 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?container-0-1))
  (at end (placed ?crate2 ?container0)))
)
(:durative-action drop_hoist1_crate3_container-0-1_container0
:parameters (?hoist1 - hoist ?crate3 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?container-0-1))
  (at end (placed ?crate3 ?container0)))
)
(:durative-action drop_hoist0_crate0_container-0-1_container0
:parameters (?hoist0 - hoist ?crate0 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?container-0-1))
  (at end (placed ?crate0 ?container0)))
)
(:durative-action drop_hoist0_crate1_container-0-1_container0
:parameters (?hoist0 - hoist ?crate1 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?container-0-1))
  (at end (placed ?crate1 ?container0)))
)
(:durative-action drop_hoist0_crate2_container-0-1_container0
:parameters (?hoist0 - hoist ?crate2 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?container-0-1))
  (at end (placed ?crate2 ?container0)))
)
(:durative-action drop_hoist0_crate3_container-0-1_container0
:parameters (?hoist0 - hoist ?crate3 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?container-0-1))
  (at end (placed ?crate3 ?container0)))
)
(:durative-action drop_hoist1_crate2_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate2 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?depot0-2-1))
  (at end (placed ?crate2 ?depot0)))
)
(:durative-action drop_hoist1_crate2_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate2 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?depot0-1-2))
  (at end (placed ?crate2 ?depot0)))
)
(:durative-action drop_hoist1_crate2_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate2 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?depot0-1-1))
  (at end (placed ?crate2 ?depot0)))
)
(:durative-action drop_hoist1_crate2_container-0-2_container0
:parameters (?hoist1 - hoist ?crate2 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?container-0-2))
  (at end (placed ?crate2 ?container0)))
)
(:durative-action drop_hoist1_crate2_container-0-3_container0
:parameters (?hoist1 - hoist ?crate2 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?container-0-3))
  (at end (placed ?crate2 ?container0)))
)
(:durative-action drop_hoist1_crate3_container-0-2_container0
:parameters (?hoist1 - hoist ?crate3 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?container-0-2))
  (at end (placed ?crate3 ?container0)))
)
(:durative-action drop_hoist0_crate0_container-0-2_container0
:parameters (?hoist0 - hoist ?crate0 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?container-0-2))
  (at end (placed ?crate0 ?container0)))
)
(:durative-action drop_hoist0_crate1_container-0-2_container0
:parameters (?hoist0 - hoist ?crate1 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?container-0-2))
  (at end (placed ?crate1 ?container0)))
)
(:durative-action drop_hoist0_crate2_container-0-2_container0
:parameters (?hoist0 - hoist ?crate2 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?container-0-2))
  (at end (placed ?crate2 ?container0)))
)
(:durative-action drop_hoist0_crate3_container-0-2_container0
:parameters (?hoist0 - hoist ?crate3 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?container-0-2))
  (at end (placed ?crate3 ?container0)))
)
(:durative-action drop_hoist1_crate3_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate3 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?depot0-2-1))
  (at end (placed ?crate3 ?depot0)))
)
(:durative-action drop_hoist1_crate3_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate3 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?depot0-1-2))
  (at end (placed ?crate3 ?depot0)))
)
(:durative-action drop_hoist1_crate3_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate3 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?depot0-1-1))
  (at end (placed ?crate3 ?depot0)))
)
(:durative-action drop_hoist1_crate3_container-0-3_container0
:parameters (?hoist1 - hoist ?crate3 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?container-0-3))
  (at end (placed ?crate3 ?container0)))
)
(:durative-action drop_hoist0_crate0_container-0-3_container0
:parameters (?hoist0 - hoist ?crate0 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?container-0-3))
  (at end (placed ?crate0 ?container0)))
)
(:durative-action drop_hoist0_crate1_container-0-3_container0
:parameters (?hoist0 - hoist ?crate1 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?container-0-3))
  (at end (placed ?crate1 ?container0)))
)
(:durative-action drop_hoist0_crate2_container-0-3_container0
:parameters (?hoist0 - hoist ?crate2 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?container-0-3))
  (at end (placed ?crate2 ?container0)))
)
(:durative-action drop_hoist0_crate3_container-0-3_container0
:parameters (?hoist0 - hoist ?crate3 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?container-0-3))
  (at end (placed ?crate3 ?container0)))
)
(:durative-action drop_hoist0_crate0_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?depot0-2-1))
  (at end (placed ?crate0 ?depot0)))
)
(:durative-action drop_hoist0_crate0_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?depot0-1-2))
  (at end (placed ?crate0 ?depot0)))
)
(:durative-action drop_hoist0_crate0_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate0 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?depot1-1-1))
  (at end (placed ?crate0 ?depot1)))
)
(:durative-action drop_hoist0_crate0_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate0 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?depot1-1-2))
  (at end (placed ?crate0 ?depot1)))
)
(:durative-action drop_hoist0_crate0_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate0 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?depot1-2-1))
  (at end (placed ?crate0 ?depot1)))
)
(:durative-action drop_hoist0_crate0_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate0 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?depot1-2-2))
  (at end (placed ?crate0 ?depot1)))
)
(:durative-action drop_hoist0_crate0_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?depot0-1-1))
  (at end (placed ?crate0 ?depot0)))
)
(:durative-action drop_hoist0_crate0_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?depot0-2-2))
  (at end (placed ?crate0 ?depot0)))
)
(:durative-action drop_hoist0_crate1_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?depot0-1-1))
  (at end (placed ?crate1 ?depot0)))
)
(:durative-action drop_hoist0_crate2_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate2 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?depot0-1-1))
  (at end (placed ?crate2 ?depot0)))
)
(:durative-action drop_hoist0_crate3_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate3 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?depot0-1-1))
  (at end (placed ?crate3 ?depot0)))
)
(:durative-action move_hoist0_depot0-1-1_depot0-2-1
:parameters (?hoist0 - hoist ?depot0-1-1 - section ?depot0-2-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-1-1))
  (over all (inner-link ?depot0-1-1 ?depot0-2-1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-1-1)))
  (at end (position ?hoist0 ?depot0-2-1)))
)
(:durative-action move_hoist0_depot0-1-1_depot0-1-2
:parameters (?hoist0 - hoist ?depot0-1-1 - section ?depot0-1-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-1-1))
  (over all (inner-link ?depot0-1-1 ?depot0-1-2)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-1-1)))
  (at end (position ?hoist0 ?depot0-1-2)))
)
(:durative-action go-out_hoist0_depot0-1-1_depot0_container-0-0_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-1-1 - section ?depot0 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-1-1)))
  (at end (position ?hoist0 ?container-0-0)))
)
(:durative-action go-out_hoist0_depot0-1-1_depot0_container-0-1_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-1-1 - section ?depot0 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-1-1)))
  (at end (position ?hoist0 ?container-0-1)))
)
(:durative-action go-out_hoist0_depot0-1-1_depot0_container-0-2_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-1-1 - section ?depot0 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-1-1)))
  (at end (position ?hoist0 ?container-0-2)))
)
(:durative-action go-out_hoist0_depot0-1-1_depot0_container-0-3_container0_terminal0
:parameters (?hoist0 - hoist ?depot0-1-1 - section ?depot0 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot0 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot0-1-1)))
  (at end (position ?hoist0 ?container-0-3)))
)
(:durative-action drop_hoist0_crate1_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate1 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?depot1-1-1))
  (at end (placed ?crate1 ?depot1)))
)
(:durative-action drop_hoist0_crate2_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate2 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?depot1-1-1))
  (at end (placed ?crate2 ?depot1)))
)
(:durative-action drop_hoist0_crate3_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate3 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?depot1-1-1))
  (at end (placed ?crate3 ?depot1)))
)
(:durative-action move_hoist0_depot1-1-1_depot1-2-1
:parameters (?hoist0 - hoist ?depot1-1-1 - section ?depot1-2-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-1))
  (over all (inner-link ?depot1-1-1 ?depot1-2-1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-1)))
  (at end (position ?hoist0 ?depot1-2-1)))
)
(:durative-action move_hoist0_depot1-1-1_depot1-1-2
:parameters (?hoist0 - hoist ?depot1-1-1 - section ?depot1-1-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-1))
  (over all (inner-link ?depot1-1-1 ?depot1-1-2)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-1)))
  (at end (position ?hoist0 ?depot1-1-2)))
)
(:durative-action go-out_hoist0_depot1-1-1_depot1_container-0-0_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-1)))
  (at end (position ?hoist0 ?container-0-0)))
)
(:durative-action go-out_hoist0_depot1-1-1_depot1_container-0-1_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-1)))
  (at end (position ?hoist0 ?container-0-1)))
)
(:durative-action go-out_hoist0_depot1-1-1_depot1_container-0-2_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-1)))
  (at end (position ?hoist0 ?container-0-2)))
)
(:durative-action go-out_hoist0_depot1-1-1_depot1_container-0-3_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-1)))
  (at end (position ?hoist0 ?container-0-3)))
)
(:durative-action go-out_hoist0_depot1-1-1_depot1_container-1-0_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-1-0 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-1)))
  (at end (position ?hoist0 ?container-1-0)))
)
(:durative-action go-out_hoist0_depot1-1-1_depot1_container-1-1_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-1-1 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-1)))
  (at end (position ?hoist0 ?container-1-1)))
)
(:durative-action go-out_hoist0_depot1-1-1_depot1_container-1-2_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-1-2 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-1)))
  (at end (position ?hoist0 ?container-1-2)))
)
(:durative-action go-out_hoist0_depot1-1-1_depot1_container-1-3_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-1-1 - section ?depot1 - depot ?container-1-3 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-1)))
  (at end (position ?hoist0 ?container-1-3)))
)
(:durative-action drop_hoist0_crate1_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate1 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?depot1-1-2))
  (at end (placed ?crate1 ?depot1)))
)
(:durative-action drop_hoist0_crate2_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate2 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?depot1-1-2))
  (at end (placed ?crate2 ?depot1)))
)
(:durative-action drop_hoist0_crate3_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate3 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?depot1-1-2))
  (at end (placed ?crate3 ?depot1)))
)
(:durative-action move_hoist0_depot1-1-2_depot1-1-1
:parameters (?hoist0 - hoist ?depot1-1-2 - section ?depot1-1-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-2))
  (over all (inner-link ?depot1-1-2 ?depot1-1-1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-2)))
  (at end (position ?hoist0 ?depot1-1-1)))
)
(:durative-action move_hoist0_depot1-1-2_depot1-2-2
:parameters (?hoist0 - hoist ?depot1-1-2 - section ?depot1-2-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-2))
  (over all (inner-link ?depot1-1-2 ?depot1-2-2)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-2)))
  (at end (position ?hoist0 ?depot1-2-2)))
)
(:durative-action go-out_hoist0_depot1-1-2_depot1_container-0-0_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-2)))
  (at end (position ?hoist0 ?container-0-0)))
)
(:durative-action go-out_hoist0_depot1-1-2_depot1_container-0-1_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-2)))
  (at end (position ?hoist0 ?container-0-1)))
)
(:durative-action go-out_hoist0_depot1-1-2_depot1_container-0-2_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-2)))
  (at end (position ?hoist0 ?container-0-2)))
)
(:durative-action go-out_hoist0_depot1-1-2_depot1_container-0-3_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-2)))
  (at end (position ?hoist0 ?container-0-3)))
)
(:durative-action go-out_hoist0_depot1-1-2_depot1_container-1-0_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-1-0 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-2)))
  (at end (position ?hoist0 ?container-1-0)))
)
(:durative-action go-out_hoist0_depot1-1-2_depot1_container-1-1_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-1-1 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-2)))
  (at end (position ?hoist0 ?container-1-1)))
)
(:durative-action go-out_hoist0_depot1-1-2_depot1_container-1-2_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-1-2 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-2)))
  (at end (position ?hoist0 ?container-1-2)))
)
(:durative-action go-out_hoist0_depot1-1-2_depot1_container-1-3_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-1-2 - section ?depot1 - depot ?container-1-3 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-1-2)))
  (at end (position ?hoist0 ?container-1-3)))
)
(:durative-action drop_hoist0_crate1_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate1 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?depot1-2-1))
  (at end (placed ?crate1 ?depot1)))
)
(:durative-action drop_hoist0_crate2_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate2 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?depot1-2-1))
  (at end (placed ?crate2 ?depot1)))
)
(:durative-action drop_hoist0_crate3_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate3 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?depot1-2-1))
  (at end (placed ?crate3 ?depot1)))
)
(:durative-action move_hoist0_depot1-2-1_depot1-1-1
:parameters (?hoist0 - hoist ?depot1-2-1 - section ?depot1-1-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-1))
  (over all (inner-link ?depot1-2-1 ?depot1-1-1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-1)))
  (at end (position ?hoist0 ?depot1-1-1)))
)
(:durative-action move_hoist0_depot1-2-1_depot1-2-2
:parameters (?hoist0 - hoist ?depot1-2-1 - section ?depot1-2-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-1))
  (over all (inner-link ?depot1-2-1 ?depot1-2-2)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-1)))
  (at end (position ?hoist0 ?depot1-2-2)))
)
(:durative-action go-out_hoist0_depot1-2-1_depot1_container-0-0_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-1)))
  (at end (position ?hoist0 ?container-0-0)))
)
(:durative-action go-out_hoist0_depot1-2-1_depot1_container-0-1_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-1)))
  (at end (position ?hoist0 ?container-0-1)))
)
(:durative-action go-out_hoist0_depot1-2-1_depot1_container-0-2_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-1)))
  (at end (position ?hoist0 ?container-0-2)))
)
(:durative-action go-out_hoist0_depot1-2-1_depot1_container-0-3_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-1)))
  (at end (position ?hoist0 ?container-0-3)))
)
(:durative-action go-out_hoist0_depot1-2-1_depot1_container-1-0_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-1-0 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-1)))
  (at end (position ?hoist0 ?container-1-0)))
)
(:durative-action go-out_hoist0_depot1-2-1_depot1_container-1-1_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-1-1 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-1)))
  (at end (position ?hoist0 ?container-1-1)))
)
(:durative-action go-out_hoist0_depot1-2-1_depot1_container-1-2_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-1-2 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-1)))
  (at end (position ?hoist0 ?container-1-2)))
)
(:durative-action go-out_hoist0_depot1-2-1_depot1_container-1-3_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-2-1 - section ?depot1 - depot ?container-1-3 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-1)))
  (at end (position ?hoist0 ?container-1-3)))
)
(:durative-action drop_hoist0_crate1_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate1 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?depot1-2-2))
  (at end (placed ?crate1 ?depot1)))
)
(:durative-action drop_hoist0_crate2_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate2 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?depot1-2-2))
  (at end (placed ?crate2 ?depot1)))
)
(:durative-action drop_hoist0_crate3_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate3 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?depot1-2-2))
  (at end (placed ?crate3 ?depot1)))
)
(:durative-action move_hoist0_depot1-2-2_depot1-1-2
:parameters (?hoist0 - hoist ?depot1-2-2 - section ?depot1-1-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-2))
  (over all (inner-link ?depot1-2-2 ?depot1-1-2)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-2)))
  (at end (position ?hoist0 ?depot1-1-2)))
)
(:durative-action move_hoist0_depot1-2-2_depot1-2-1
:parameters (?hoist0 - hoist ?depot1-2-2 - section ?depot1-2-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-2))
  (over all (inner-link ?depot1-2-2 ?depot1-2-1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-2)))
  (at end (position ?hoist0 ?depot1-2-1)))
)
(:durative-action go-out_hoist0_depot1-2-2_depot1_container-0-0_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-0-0 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-0-0 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-2)))
  (at end (position ?hoist0 ?container-0-0)))
)
(:durative-action go-out_hoist0_depot1-2-2_depot1_container-0-1_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-0-1 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-0-1 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-2)))
  (at end (position ?hoist0 ?container-0-1)))
)
(:durative-action go-out_hoist0_depot1-2-2_depot1_container-0-2_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-0-2 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-0-2 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-2)))
  (at end (position ?hoist0 ?container-0-2)))
)
(:durative-action go-out_hoist0_depot1-2-2_depot1_container-0-3_container0_terminal0
:parameters (?hoist0 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-0-3 - section ?container0 - container ?terminal0 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-0-3 ?container0))
  (over all (at ?container0 ?terminal0))
  (over all (outer-link ?depot1 ?terminal0)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-2)))
  (at end (position ?hoist0 ?container-0-3)))
)
(:durative-action go-out_hoist0_depot1-2-2_depot1_container-1-0_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-1-0 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-2)))
  (at end (position ?hoist0 ?container-1-0)))
)
(:durative-action go-out_hoist0_depot1-2-2_depot1_container-1-1_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-1-1 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-2)))
  (at end (position ?hoist0 ?container-1-1)))
)
(:durative-action go-out_hoist0_depot1-2-2_depot1_container-1-2_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-1-2 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-2)))
  (at end (position ?hoist0 ?container-1-2)))
)
(:durative-action go-out_hoist0_depot1-2-2_depot1_container-1-3_container1_terminal1
:parameters (?hoist0 - hoist ?depot1-2-2 - section ?depot1 - depot ?container-1-3 - section ?container1 - container ?terminal1 - terminal)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (outer-link ?depot1 ?terminal1)))
:effect (and 
  (at start (not (position ?hoist0 ?depot1-2-2)))
  (at end (position ?hoist0 ?container-1-3)))
)
(:durative-action drop_hoist0_crate1_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?depot0-2-1))
  (at end (placed ?crate1 ?depot0)))
)
(:durative-action drop_hoist0_crate1_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?depot0-1-2))
  (at end (placed ?crate1 ?depot0)))
)
(:durative-action drop_hoist0_crate1_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?depot0-2-2))
  (at end (placed ?crate1 ?depot0)))
)
(:durative-action drop_hoist0_crate2_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate2 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?depot0-2-1))
  (at end (placed ?crate2 ?depot0)))
)
(:durative-action drop_hoist0_crate2_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate2 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?depot0-1-2))
  (at end (placed ?crate2 ?depot0)))
)
(:durative-action drop_hoist0_crate2_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate2 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?depot0-2-2))
  (at end (placed ?crate2 ?depot0)))
)
(:durative-action drop_hoist0_crate3_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate3 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?depot0-2-1))
  (at end (placed ?crate3 ?depot0)))
)
(:durative-action drop_hoist0_crate3_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate3 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?depot0-1-2))
  (at end (placed ?crate3 ?depot0)))
)
(:durative-action drop_hoist0_crate3_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate3 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?depot0-2-2))
  (at end (placed ?crate3 ?depot0)))
)
(:durative-action lift_hoist0_crate0_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?depot0-2-1))
  (at start (placed ?crate0 ?depot0))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate0 ?depot0))))
)
(:durative-action lift_hoist1_crate0_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate0 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?depot0-2-1))
  (at start (placed ?crate0 ?depot0))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate0 ?depot0))))
)
(:durative-action lift_hoist0_crate0_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?depot0-1-2))
  (at start (placed ?crate0 ?depot0))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate0 ?depot0))))
)
(:durative-action lift_hoist0_crate0_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?depot0-1-1))
  (at start (placed ?crate0 ?depot0))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate0 ?depot0))))
)
(:durative-action lift_hoist0_crate0_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate0 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?depot0-2-2))
  (at start (placed ?crate0 ?depot0))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate0 ?depot0))))
)
(:durative-action lift_hoist1_crate0_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate0 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?depot0-1-2))
  (at start (placed ?crate0 ?depot0))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate0 ?depot0))))
)
(:durative-action lift_hoist1_crate0_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate0 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?depot0-1-1))
  (at start (placed ?crate0 ?depot0))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate0 ?depot0))))
)
(:durative-action lift_hoist1_crate0_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate0 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?depot0-2-2))
  (at start (placed ?crate0 ?depot0))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate0 ?depot0))))
)
(:durative-action lift_hoist0_crate0_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate0 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?depot1-1-1))
  (at start (placed ?crate0 ?depot1))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate0 ?depot1))))
)
(:durative-action lift_hoist1_crate0_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate0 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?depot1-1-1))
  (at start (placed ?crate0 ?depot1))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate0 ?depot1))))
)
(:durative-action lift_hoist0_crate0_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate0 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?depot1-1-2))
  (at start (placed ?crate0 ?depot1))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate0 ?depot1))))
)
(:durative-action lift_hoist0_crate0_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate0 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?depot1-2-1))
  (at start (placed ?crate0 ?depot1))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate0 ?depot1))))
)
(:durative-action lift_hoist0_crate0_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate0 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?depot1-2-2))
  (at start (placed ?crate0 ?depot1))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate0 ?depot1))))
)
(:durative-action lift_hoist1_crate0_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate0 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?depot1-1-2))
  (at start (placed ?crate0 ?depot1))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate0 ?depot1))))
)
(:durative-action lift_hoist1_crate0_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate0 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?depot1-2-1))
  (at start (placed ?crate0 ?depot1))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate0 ?depot1))))
)
(:durative-action lift_hoist1_crate0_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate0 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?depot1-2-2))
  (at start (placed ?crate0 ?depot1))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate0 ?depot1))))
)
(:durative-action lift_hoist0_crate0_container-0-1_container0
:parameters (?hoist0 - hoist ?crate0 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?container-0-1))
  (at start (placed ?crate0 ?container0))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate0 ?container0))))
)
(:durative-action lift_hoist1_crate0_container-0-1_container0
:parameters (?hoist1 - hoist ?crate0 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?container-0-1))
  (at start (placed ?crate0 ?container0))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate0 ?container0))))
)
(:durative-action lift_hoist0_crate0_container-0-2_container0
:parameters (?hoist0 - hoist ?crate0 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?container-0-2))
  (at start (placed ?crate0 ?container0))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate0 ?container0))))
)
(:durative-action lift_hoist1_crate0_container-0-2_container0
:parameters (?hoist1 - hoist ?crate0 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?container-0-2))
  (at start (placed ?crate0 ?container0))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate0 ?container0))))
)
(:durative-action lift_hoist0_crate0_container-0-3_container0
:parameters (?hoist0 - hoist ?crate0 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?container-0-3))
  (at start (placed ?crate0 ?container0))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate0 ?container0))))
)
(:durative-action lift_hoist1_crate0_container-0-3_container0
:parameters (?hoist1 - hoist ?crate0 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?container-0-3))
  (at start (placed ?crate0 ?container0))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate0 ?container0))))
)
(:durative-action lift_hoist0_crate1_container-0-0_container0
:parameters (?hoist0 - hoist ?crate1 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?container-0-0))
  (at start (placed ?crate1 ?container0))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate1 ?container0))))
)
(:durative-action lift_hoist1_crate1_container-0-0_container0
:parameters (?hoist1 - hoist ?crate1 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?container-0-0))
  (at start (placed ?crate1 ?container0))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate1 ?container0))))
)
(:durative-action lift_hoist0_crate2_container-0-0_container0
:parameters (?hoist0 - hoist ?crate2 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?container-0-0))
  (at start (placed ?crate2 ?container0))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate2 ?container0))))
)
(:durative-action lift_hoist1_crate2_container-0-0_container0
:parameters (?hoist1 - hoist ?crate2 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?container-0-0))
  (at start (placed ?crate2 ?container0))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate2 ?container0))))
)
(:durative-action lift_hoist0_crate3_container-0-0_container0
:parameters (?hoist0 - hoist ?crate3 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?container-0-0))
  (at start (placed ?crate3 ?container0))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate3 ?container0))))
)
(:durative-action lift_hoist1_crate3_container-0-0_container0
:parameters (?hoist1 - hoist ?crate3 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?container-0-0))
  (at start (placed ?crate3 ?container0))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate3 ?container0))))
)
(:durative-action lift_hoist0_crate1_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?depot0-2-2))
  (at start (placed ?crate1 ?depot0))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate1 ?depot0))))
)
(:durative-action lift_hoist1_crate1_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate1 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?depot0-2-2))
  (at start (placed ?crate1 ?depot0))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate1 ?depot0))))
)
(:durative-action lift_hoist0_crate1_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?depot0-2-1))
  (at start (placed ?crate1 ?depot0))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate1 ?depot0))))
)
(:durative-action lift_hoist0_crate1_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?depot0-1-2))
  (at start (placed ?crate1 ?depot0))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate1 ?depot0))))
)
(:durative-action lift_hoist0_crate1_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate1 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?depot0-1-1))
  (at start (placed ?crate1 ?depot0))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate1 ?depot0))))
)
(:durative-action lift_hoist1_crate1_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate1 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?depot0-2-1))
  (at start (placed ?crate1 ?depot0))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate1 ?depot0))))
)
(:durative-action lift_hoist1_crate1_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate1 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?depot0-1-2))
  (at start (placed ?crate1 ?depot0))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate1 ?depot0))))
)
(:durative-action lift_hoist1_crate1_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate1 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?depot0-1-1))
  (at start (placed ?crate1 ?depot0))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate1 ?depot0))))
)
(:durative-action lift_hoist0_crate2_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate2 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?depot0-2-2))
  (at start (placed ?crate2 ?depot0))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate2 ?depot0))))
)
(:durative-action lift_hoist1_crate2_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate2 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?depot0-2-2))
  (at start (placed ?crate2 ?depot0))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate2 ?depot0))))
)
(:durative-action lift_hoist0_crate2_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate2 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?depot0-2-1))
  (at start (placed ?crate2 ?depot0))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate2 ?depot0))))
)
(:durative-action lift_hoist0_crate2_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate2 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?depot0-1-2))
  (at start (placed ?crate2 ?depot0))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate2 ?depot0))))
)
(:durative-action lift_hoist0_crate2_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate2 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?depot0-1-1))
  (at start (placed ?crate2 ?depot0))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate2 ?depot0))))
)
(:durative-action lift_hoist1_crate2_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate2 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?depot0-2-1))
  (at start (placed ?crate2 ?depot0))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate2 ?depot0))))
)
(:durative-action lift_hoist1_crate2_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate2 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?depot0-1-2))
  (at start (placed ?crate2 ?depot0))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate2 ?depot0))))
)
(:durative-action lift_hoist1_crate2_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate2 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?depot0-1-1))
  (at start (placed ?crate2 ?depot0))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate2 ?depot0))))
)
(:durative-action lift_hoist0_crate3_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate3 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?depot0-2-2))
  (at start (placed ?crate3 ?depot0))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate3 ?depot0))))
)
(:durative-action lift_hoist1_crate3_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate3 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?depot0-2-2))
  (at start (placed ?crate3 ?depot0))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate3 ?depot0))))
)
(:durative-action lift_hoist0_crate3_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate3 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?depot0-2-1))
  (at start (placed ?crate3 ?depot0))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate3 ?depot0))))
)
(:durative-action lift_hoist0_crate3_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate3 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?depot0-1-2))
  (at start (placed ?crate3 ?depot0))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate3 ?depot0))))
)
(:durative-action lift_hoist0_crate3_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate3 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?depot0-1-1))
  (at start (placed ?crate3 ?depot0))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate3 ?depot0))))
)
(:durative-action lift_hoist1_crate3_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate3 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?depot0-2-1))
  (at start (placed ?crate3 ?depot0))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate3 ?depot0))))
)
(:durative-action lift_hoist1_crate3_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate3 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?depot0-1-2))
  (at start (placed ?crate3 ?depot0))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate3 ?depot0))))
)
(:durative-action lift_hoist1_crate3_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate3 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?depot0-1-1))
  (at start (placed ?crate3 ?depot0))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate3 ?depot0))))
)
(:durative-action lift_hoist0_crate1_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate1 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?depot1-1-1))
  (at start (placed ?crate1 ?depot1))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate1 ?depot1))))
)
(:durative-action lift_hoist1_crate1_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate1 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?depot1-1-1))
  (at start (placed ?crate1 ?depot1))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate1 ?depot1))))
)
(:durative-action lift_hoist0_crate1_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate1 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?depot1-1-2))
  (at start (placed ?crate1 ?depot1))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate1 ?depot1))))
)
(:durative-action lift_hoist0_crate1_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate1 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?depot1-2-1))
  (at start (placed ?crate1 ?depot1))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate1 ?depot1))))
)
(:durative-action lift_hoist0_crate1_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate1 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?depot1-2-2))
  (at start (placed ?crate1 ?depot1))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate1 ?depot1))))
)
(:durative-action lift_hoist1_crate1_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate1 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?depot1-1-2))
  (at start (placed ?crate1 ?depot1))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate1 ?depot1))))
)
(:durative-action lift_hoist1_crate1_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate1 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?depot1-2-1))
  (at start (placed ?crate1 ?depot1))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate1 ?depot1))))
)
(:durative-action lift_hoist1_crate1_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate1 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?depot1-2-2))
  (at start (placed ?crate1 ?depot1))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate1 ?depot1))))
)
(:durative-action lift_hoist0_crate2_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate2 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?depot1-1-1))
  (at start (placed ?crate2 ?depot1))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate2 ?depot1))))
)
(:durative-action lift_hoist1_crate2_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate2 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?depot1-1-1))
  (at start (placed ?crate2 ?depot1))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate2 ?depot1))))
)
(:durative-action lift_hoist0_crate2_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate2 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?depot1-1-2))
  (at start (placed ?crate2 ?depot1))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate2 ?depot1))))
)
(:durative-action lift_hoist0_crate2_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate2 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?depot1-2-1))
  (at start (placed ?crate2 ?depot1))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate2 ?depot1))))
)
(:durative-action lift_hoist0_crate2_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate2 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?depot1-2-2))
  (at start (placed ?crate2 ?depot1))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate2 ?depot1))))
)
(:durative-action lift_hoist1_crate2_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate2 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?depot1-1-2))
  (at start (placed ?crate2 ?depot1))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate2 ?depot1))))
)
(:durative-action lift_hoist1_crate2_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate2 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?depot1-2-1))
  (at start (placed ?crate2 ?depot1))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate2 ?depot1))))
)
(:durative-action lift_hoist1_crate2_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate2 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?depot1-2-2))
  (at start (placed ?crate2 ?depot1))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate2 ?depot1))))
)
(:durative-action lift_hoist0_crate3_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate3 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?depot1-1-1))
  (at start (placed ?crate3 ?depot1))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate3 ?depot1))))
)
(:durative-action lift_hoist1_crate3_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate3 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?depot1-1-1))
  (at start (placed ?crate3 ?depot1))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate3 ?depot1))))
)
(:durative-action lift_hoist0_crate3_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate3 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?depot1-1-2))
  (at start (placed ?crate3 ?depot1))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate3 ?depot1))))
)
(:durative-action lift_hoist0_crate3_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate3 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?depot1-2-1))
  (at start (placed ?crate3 ?depot1))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate3 ?depot1))))
)
(:durative-action lift_hoist0_crate3_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate3 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?depot1-2-2))
  (at start (placed ?crate3 ?depot1))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate3 ?depot1))))
)
(:durative-action lift_hoist1_crate3_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate3 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?depot1-1-2))
  (at start (placed ?crate3 ?depot1))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate3 ?depot1))))
)
(:durative-action lift_hoist1_crate3_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate3 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?depot1-2-1))
  (at start (placed ?crate3 ?depot1))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate3 ?depot1))))
)
(:durative-action lift_hoist1_crate3_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate3 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?depot1-2-2))
  (at start (placed ?crate3 ?depot1))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate3 ?depot1))))
)
(:durative-action lift_hoist1_crate4_container-1-0_container1
:parameters (?hoist1 - hoist ?crate4 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?container-1-0))
  (at start (placed ?crate4 ?container1))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate4 ?container1))))
)
(:durative-action move_hoist1_container-1-0_container-1-1
:parameters (?hoist1 - hoist ?container-1-0 - section ?container-1-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-0))
  (over all (inner-link ?container-1-0 ?container-1-1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-0)))
  (at end (position ?hoist1 ?container-1-1)))
)
(:durative-action move_hoist1_container-1-0_container-1-2
:parameters (?hoist1 - hoist ?container-1-0 - section ?container-1-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-0))
  (over all (inner-link ?container-1-0 ?container-1-2)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-0)))
  (at end (position ?hoist1 ?container-1-2)))
)
(:durative-action go-in_hoist1_container-1-0_container1_terminal1_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?container-1-0 - section ?container1 - container ?terminal1 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-0)))
  (at end (position ?hoist1 ?depot1-1-1)))
)
(:durative-action go-in_hoist1_container-1-0_container1_terminal1_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?container-1-0 - section ?container1 - container ?terminal1 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-0)))
  (at end (position ?hoist1 ?depot1-1-2)))
)
(:durative-action go-in_hoist1_container-1-0_container1_terminal1_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?container-1-0 - section ?container1 - container ?terminal1 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-0)))
  (at end (position ?hoist1 ?depot1-2-1)))
)
(:durative-action go-in_hoist1_container-1-0_container1_terminal1_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?container-1-0 - section ?container1 - container ?terminal1 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-0)))
  (at end (position ?hoist1 ?depot1-2-2)))
)
(:durative-action lift_hoist1_crate5_container-1-1_container1
:parameters (?hoist1 - hoist ?crate5 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?container-1-1))
  (at start (placed ?crate5 ?container1))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate5 ?container1))))
)
(:durative-action move_hoist1_container-1-1_container-1-0
:parameters (?hoist1 - hoist ?container-1-1 - section ?container-1-0 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-1))
  (over all (inner-link ?container-1-1 ?container-1-0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-1)))
  (at end (position ?hoist1 ?container-1-0)))
)
(:durative-action move_hoist1_container-1-1_container-1-3
:parameters (?hoist1 - hoist ?container-1-1 - section ?container-1-3 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-1))
  (over all (inner-link ?container-1-1 ?container-1-3)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-1)))
  (at end (position ?hoist1 ?container-1-3)))
)
(:durative-action go-in_hoist1_container-1-1_container1_terminal1_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?container-1-1 - section ?container1 - container ?terminal1 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-1)))
  (at end (position ?hoist1 ?depot1-1-1)))
)
(:durative-action go-in_hoist1_container-1-1_container1_terminal1_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?container-1-1 - section ?container1 - container ?terminal1 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-1)))
  (at end (position ?hoist1 ?depot1-1-2)))
)
(:durative-action go-in_hoist1_container-1-1_container1_terminal1_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?container-1-1 - section ?container1 - container ?terminal1 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-1)))
  (at end (position ?hoist1 ?depot1-2-1)))
)
(:durative-action go-in_hoist1_container-1-1_container1_terminal1_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?container-1-1 - section ?container1 - container ?terminal1 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-1)))
  (at end (position ?hoist1 ?depot1-2-2)))
)
(:durative-action lift_hoist1_crate6_container-1-2_container1
:parameters (?hoist1 - hoist ?crate6 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?container-1-2))
  (at start (placed ?crate6 ?container1))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate6 ?container1))))
)
(:durative-action move_hoist1_container-1-2_container-1-0
:parameters (?hoist1 - hoist ?container-1-2 - section ?container-1-0 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-2))
  (over all (inner-link ?container-1-2 ?container-1-0)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-2)))
  (at end (position ?hoist1 ?container-1-0)))
)
(:durative-action move_hoist1_container-1-2_container-1-3
:parameters (?hoist1 - hoist ?container-1-2 - section ?container-1-3 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-2))
  (over all (inner-link ?container-1-2 ?container-1-3)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-2)))
  (at end (position ?hoist1 ?container-1-3)))
)
(:durative-action go-in_hoist1_container-1-2_container1_terminal1_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?container-1-2 - section ?container1 - container ?terminal1 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-2)))
  (at end (position ?hoist1 ?depot1-1-1)))
)
(:durative-action go-in_hoist1_container-1-2_container1_terminal1_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?container-1-2 - section ?container1 - container ?terminal1 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-2)))
  (at end (position ?hoist1 ?depot1-1-2)))
)
(:durative-action go-in_hoist1_container-1-2_container1_terminal1_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?container-1-2 - section ?container1 - container ?terminal1 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-2)))
  (at end (position ?hoist1 ?depot1-2-1)))
)
(:durative-action go-in_hoist1_container-1-2_container1_terminal1_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?container-1-2 - section ?container1 - container ?terminal1 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-2)))
  (at end (position ?hoist1 ?depot1-2-2)))
)
(:durative-action lift_hoist1_crate7_container-1-3_container1
:parameters (?hoist1 - hoist ?crate7 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?container-1-3))
  (at start (placed ?crate7 ?container1))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate7 ?container1))))
)
(:durative-action move_hoist1_container-1-3_container-1-1
:parameters (?hoist1 - hoist ?container-1-3 - section ?container-1-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-3))
  (over all (inner-link ?container-1-3 ?container-1-1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-3)))
  (at end (position ?hoist1 ?container-1-1)))
)
(:durative-action move_hoist1_container-1-3_container-1-2
:parameters (?hoist1 - hoist ?container-1-3 - section ?container-1-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-3))
  (over all (inner-link ?container-1-3 ?container-1-2)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-3)))
  (at end (position ?hoist1 ?container-1-2)))
)
(:durative-action go-in_hoist1_container-1-3_container1_terminal1_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?container-1-3 - section ?container1 - container ?terminal1 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-3)))
  (at end (position ?hoist1 ?depot1-1-1)))
)
(:durative-action go-in_hoist1_container-1-3_container1_terminal1_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?container-1-3 - section ?container1 - container ?terminal1 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-3)))
  (at end (position ?hoist1 ?depot1-1-2)))
)
(:durative-action go-in_hoist1_container-1-3_container1_terminal1_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?container-1-3 - section ?container1 - container ?terminal1 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-3)))
  (at end (position ?hoist1 ?depot1-2-1)))
)
(:durative-action go-in_hoist1_container-1-3_container1_terminal1_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?container-1-3 - section ?container1 - container ?terminal1 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist1 ?container-1-3)))
  (at end (position ?hoist1 ?depot1-2-2)))
)
(:durative-action lift_hoist0_crate1_container-0-2_container0
:parameters (?hoist0 - hoist ?crate1 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?container-0-2))
  (at start (placed ?crate1 ?container0))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate1 ?container0))))
)
(:durative-action lift_hoist1_crate1_container-0-2_container0
:parameters (?hoist1 - hoist ?crate1 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?container-0-2))
  (at start (placed ?crate1 ?container0))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate1 ?container0))))
)
(:durative-action lift_hoist0_crate1_container-0-3_container0
:parameters (?hoist0 - hoist ?crate1 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?container-0-3))
  (at start (placed ?crate1 ?container0))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate1 ?container0))))
)
(:durative-action lift_hoist1_crate1_container-0-3_container0
:parameters (?hoist1 - hoist ?crate1 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?container-0-3))
  (at start (placed ?crate1 ?container0))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate1 ?container0))))
)
(:durative-action lift_hoist0_crate2_container-0-1_container0
:parameters (?hoist0 - hoist ?crate2 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?container-0-1))
  (at start (placed ?crate2 ?container0))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate2 ?container0))))
)
(:durative-action lift_hoist1_crate2_container-0-1_container0
:parameters (?hoist1 - hoist ?crate2 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?container-0-1))
  (at start (placed ?crate2 ?container0))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate2 ?container0))))
)
(:durative-action lift_hoist0_crate3_container-0-1_container0
:parameters (?hoist0 - hoist ?crate3 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?container-0-1))
  (at start (placed ?crate3 ?container0))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate3 ?container0))))
)
(:durative-action lift_hoist1_crate3_container-0-1_container0
:parameters (?hoist1 - hoist ?crate3 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?container-0-1))
  (at start (placed ?crate3 ?container0))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate3 ?container0))))
)
(:durative-action lift_hoist0_crate2_container-0-3_container0
:parameters (?hoist0 - hoist ?crate2 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?container-0-3))
  (at start (placed ?crate2 ?container0))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate2 ?container0))))
)
(:durative-action lift_hoist1_crate2_container-0-3_container0
:parameters (?hoist1 - hoist ?crate2 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?container-0-3))
  (at start (placed ?crate2 ?container0))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate2 ?container0))))
)
(:durative-action lift_hoist0_crate3_container-0-2_container0
:parameters (?hoist0 - hoist ?crate3 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?container-0-2))
  (at start (placed ?crate3 ?container0))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate3 ?container0))))
)
(:durative-action lift_hoist1_crate3_container-0-2_container0
:parameters (?hoist1 - hoist ?crate3 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?container-0-2))
  (at start (placed ?crate3 ?container0))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate3 ?container0))))
)
(:durative-action lift_hoist0_crate4_container-1-0_container1
:parameters (?hoist0 - hoist ?crate4 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?container-1-0))
  (at start (placed ?crate4 ?container1))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate4 ?container1))))
)
(:durative-action move_hoist0_container-1-0_container-1-1
:parameters (?hoist0 - hoist ?container-1-0 - section ?container-1-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-0))
  (over all (inner-link ?container-1-0 ?container-1-1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-0)))
  (at end (position ?hoist0 ?container-1-1)))
)
(:durative-action move_hoist0_container-1-0_container-1-2
:parameters (?hoist0 - hoist ?container-1-0 - section ?container-1-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-0))
  (over all (inner-link ?container-1-0 ?container-1-2)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-0)))
  (at end (position ?hoist0 ?container-1-2)))
)
(:durative-action go-in_hoist0_container-1-0_container1_terminal1_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?container-1-0 - section ?container1 - container ?terminal1 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-0)))
  (at end (position ?hoist0 ?depot1-1-1)))
)
(:durative-action go-in_hoist0_container-1-0_container1_terminal1_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?container-1-0 - section ?container1 - container ?terminal1 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-0)))
  (at end (position ?hoist0 ?depot1-1-2)))
)
(:durative-action go-in_hoist0_container-1-0_container1_terminal1_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?container-1-0 - section ?container1 - container ?terminal1 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-0)))
  (at end (position ?hoist0 ?depot1-2-1)))
)
(:durative-action go-in_hoist0_container-1-0_container1_terminal1_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?container-1-0 - section ?container1 - container ?terminal1 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-0)))
  (at end (position ?hoist0 ?depot1-2-2)))
)
(:durative-action lift_hoist0_crate5_container-1-1_container1
:parameters (?hoist0 - hoist ?crate5 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?container-1-1))
  (at start (placed ?crate5 ?container1))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate5 ?container1))))
)
(:durative-action move_hoist0_container-1-1_container-1-0
:parameters (?hoist0 - hoist ?container-1-1 - section ?container-1-0 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-1))
  (over all (inner-link ?container-1-1 ?container-1-0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-1)))
  (at end (position ?hoist0 ?container-1-0)))
)
(:durative-action move_hoist0_container-1-1_container-1-3
:parameters (?hoist0 - hoist ?container-1-1 - section ?container-1-3 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-1))
  (over all (inner-link ?container-1-1 ?container-1-3)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-1)))
  (at end (position ?hoist0 ?container-1-3)))
)
(:durative-action go-in_hoist0_container-1-1_container1_terminal1_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?container-1-1 - section ?container1 - container ?terminal1 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-1)))
  (at end (position ?hoist0 ?depot1-1-1)))
)
(:durative-action go-in_hoist0_container-1-1_container1_terminal1_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?container-1-1 - section ?container1 - container ?terminal1 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-1)))
  (at end (position ?hoist0 ?depot1-1-2)))
)
(:durative-action go-in_hoist0_container-1-1_container1_terminal1_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?container-1-1 - section ?container1 - container ?terminal1 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-1)))
  (at end (position ?hoist0 ?depot1-2-1)))
)
(:durative-action go-in_hoist0_container-1-1_container1_terminal1_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?container-1-1 - section ?container1 - container ?terminal1 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-1)))
  (at end (position ?hoist0 ?depot1-2-2)))
)
(:durative-action lift_hoist0_crate6_container-1-2_container1
:parameters (?hoist0 - hoist ?crate6 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?container-1-2))
  (at start (placed ?crate6 ?container1))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate6 ?container1))))
)
(:durative-action move_hoist0_container-1-2_container-1-0
:parameters (?hoist0 - hoist ?container-1-2 - section ?container-1-0 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-2))
  (over all (inner-link ?container-1-2 ?container-1-0)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-2)))
  (at end (position ?hoist0 ?container-1-0)))
)
(:durative-action move_hoist0_container-1-2_container-1-3
:parameters (?hoist0 - hoist ?container-1-2 - section ?container-1-3 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-2))
  (over all (inner-link ?container-1-2 ?container-1-3)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-2)))
  (at end (position ?hoist0 ?container-1-3)))
)
(:durative-action go-in_hoist0_container-1-2_container1_terminal1_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?container-1-2 - section ?container1 - container ?terminal1 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-2)))
  (at end (position ?hoist0 ?depot1-1-1)))
)
(:durative-action go-in_hoist0_container-1-2_container1_terminal1_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?container-1-2 - section ?container1 - container ?terminal1 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-2)))
  (at end (position ?hoist0 ?depot1-1-2)))
)
(:durative-action go-in_hoist0_container-1-2_container1_terminal1_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?container-1-2 - section ?container1 - container ?terminal1 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-2)))
  (at end (position ?hoist0 ?depot1-2-1)))
)
(:durative-action go-in_hoist0_container-1-2_container1_terminal1_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?container-1-2 - section ?container1 - container ?terminal1 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-2)))
  (at end (position ?hoist0 ?depot1-2-2)))
)
(:durative-action lift_hoist0_crate7_container-1-3_container1
:parameters (?hoist0 - hoist ?crate7 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?container-1-3))
  (at start (placed ?crate7 ?container1))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate7 ?container1))))
)
(:durative-action move_hoist0_container-1-3_container-1-1
:parameters (?hoist0 - hoist ?container-1-3 - section ?container-1-1 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-3))
  (over all (inner-link ?container-1-3 ?container-1-1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-3)))
  (at end (position ?hoist0 ?container-1-1)))
)
(:durative-action move_hoist0_container-1-3_container-1-2
:parameters (?hoist0 - hoist ?container-1-3 - section ?container-1-2 - section)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-3))
  (over all (inner-link ?container-1-3 ?container-1-2)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-3)))
  (at end (position ?hoist0 ?container-1-2)))
)
(:durative-action go-in_hoist0_container-1-3_container1_terminal1_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?container-1-3 - section ?container1 - container ?terminal1 - terminal ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-3)))
  (at end (position ?hoist0 ?depot1-1-1)))
)
(:durative-action go-in_hoist0_container-1-3_container1_terminal1_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?container-1-3 - section ?container1 - container ?terminal1 - terminal ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-1-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-3)))
  (at end (position ?hoist0 ?depot1-1-2)))
)
(:durative-action go-in_hoist0_container-1-3_container1_terminal1_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?container-1-3 - section ?container1 - container ?terminal1 - terminal ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-1 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-3)))
  (at end (position ?hoist0 ?depot1-2-1)))
)
(:durative-action go-in_hoist0_container-1-3_container1_terminal1_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?container-1-3 - section ?container1 - container ?terminal1 - terminal ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 1)
:condition (and 
  (at start (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1))
  (over all (at ?container1 ?terminal1))
  (over all (location ?depot1-2-2 ?depot1))
  (over all (outer-link ?terminal1 ?depot1)))
:effect (and 
  (at start (not (position ?hoist0 ?container-1-3)))
  (at end (position ?hoist0 ?depot1-2-2)))
)
(:durative-action drop_hoist1_crate4_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate4 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?depot0-2-1))
  (at end (placed ?crate4 ?depot0)))
)
(:durative-action drop_hoist1_crate4_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate4 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?depot0-1-2))
  (at end (placed ?crate4 ?depot0)))
)
(:durative-action drop_hoist1_crate4_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate4 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?depot1-1-1))
  (at end (placed ?crate4 ?depot1)))
)
(:durative-action drop_hoist1_crate4_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate4 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?depot1-1-2))
  (at end (placed ?crate4 ?depot1)))
)
(:durative-action drop_hoist1_crate4_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate4 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?depot1-2-1))
  (at end (placed ?crate4 ?depot1)))
)
(:durative-action drop_hoist1_crate4_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate4 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?depot1-2-2))
  (at end (placed ?crate4 ?depot1)))
)
(:durative-action drop_hoist1_crate4_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate4 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?depot0-1-1))
  (at end (placed ?crate4 ?depot0)))
)
(:durative-action drop_hoist1_crate4_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate4 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?depot0-2-2))
  (at end (placed ?crate4 ?depot0)))
)
(:durative-action drop_hoist1_crate4_container-0-0_container0
:parameters (?hoist1 - hoist ?crate4 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?container-0-0))
  (at end (placed ?crate4 ?container0)))
)
(:durative-action drop_hoist1_crate4_container-0-1_container0
:parameters (?hoist1 - hoist ?crate4 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?container-0-1))
  (at end (placed ?crate4 ?container0)))
)
(:durative-action drop_hoist1_crate4_container-0-2_container0
:parameters (?hoist1 - hoist ?crate4 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?container-0-2))
  (at end (placed ?crate4 ?container0)))
)
(:durative-action drop_hoist1_crate4_container-0-3_container0
:parameters (?hoist1 - hoist ?crate4 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?container-0-3))
  (at end (placed ?crate4 ?container0)))
)
(:durative-action drop_hoist1_crate4_container-1-0_container1
:parameters (?hoist1 - hoist ?crate4 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?container-1-0))
  (at end (placed ?crate4 ?container1)))
)
(:durative-action drop_hoist1_crate4_container-1-1_container1
:parameters (?hoist1 - hoist ?crate4 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?container-1-1))
  (at end (placed ?crate4 ?container1)))
)
(:durative-action drop_hoist1_crate4_container-1-2_container1
:parameters (?hoist1 - hoist ?crate4 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?container-1-2))
  (at end (placed ?crate4 ?container1)))
)
(:durative-action drop_hoist1_crate4_container-1-3_container1
:parameters (?hoist1 - hoist ?crate4 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist1 ?crate4))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist1 ?crate4)))
  (at end (available ?hoist1))
  (at end (in ?crate4 ?container-1-3))
  (at end (placed ?crate4 ?container1)))
)
(:durative-action drop_hoist1_crate0_container-1-0_container1
:parameters (?hoist1 - hoist ?crate0 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?container-1-0))
  (at end (placed ?crate0 ?container1)))
)
(:durative-action drop_hoist1_crate1_container-1-0_container1
:parameters (?hoist1 - hoist ?crate1 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?container-1-0))
  (at end (placed ?crate1 ?container1)))
)
(:durative-action drop_hoist1_crate2_container-1-0_container1
:parameters (?hoist1 - hoist ?crate2 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?container-1-0))
  (at end (placed ?crate2 ?container1)))
)
(:durative-action drop_hoist1_crate3_container-1-0_container1
:parameters (?hoist1 - hoist ?crate3 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?container-1-0))
  (at end (placed ?crate3 ?container1)))
)
(:durative-action drop_hoist0_crate0_container-1-0_container1
:parameters (?hoist0 - hoist ?crate0 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?container-1-0))
  (at end (placed ?crate0 ?container1)))
)
(:durative-action drop_hoist0_crate1_container-1-0_container1
:parameters (?hoist0 - hoist ?crate1 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?container-1-0))
  (at end (placed ?crate1 ?container1)))
)
(:durative-action drop_hoist0_crate2_container-1-0_container1
:parameters (?hoist0 - hoist ?crate2 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?container-1-0))
  (at end (placed ?crate2 ?container1)))
)
(:durative-action drop_hoist0_crate3_container-1-0_container1
:parameters (?hoist0 - hoist ?crate3 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?container-1-0))
  (at end (placed ?crate3 ?container1)))
)
(:durative-action drop_hoist1_crate5_container-1-0_container1
:parameters (?hoist1 - hoist ?crate5 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?container-1-0))
  (at end (placed ?crate5 ?container1)))
)
(:durative-action drop_hoist1_crate6_container-1-0_container1
:parameters (?hoist1 - hoist ?crate6 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?container-1-0))
  (at end (placed ?crate6 ?container1)))
)
(:durative-action drop_hoist1_crate7_container-1-0_container1
:parameters (?hoist1 - hoist ?crate7 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?container-1-0))
  (at end (placed ?crate7 ?container1)))
)
(:durative-action drop_hoist0_crate4_container-1-0_container1
:parameters (?hoist0 - hoist ?crate4 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?container-1-0))
  (at end (placed ?crate4 ?container1)))
)
(:durative-action drop_hoist0_crate5_container-1-0_container1
:parameters (?hoist0 - hoist ?crate5 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?container-1-0))
  (at end (placed ?crate5 ?container1)))
)
(:durative-action drop_hoist0_crate6_container-1-0_container1
:parameters (?hoist0 - hoist ?crate6 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?container-1-0))
  (at end (placed ?crate6 ?container1)))
)
(:durative-action drop_hoist0_crate7_container-1-0_container1
:parameters (?hoist0 - hoist ?crate7 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-0))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-0)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?container-1-0))
  (at end (placed ?crate7 ?container1)))
)
(:durative-action drop_hoist1_crate5_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate5 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?depot0-2-1))
  (at end (placed ?crate5 ?depot0)))
)
(:durative-action drop_hoist1_crate5_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate5 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?depot0-1-2))
  (at end (placed ?crate5 ?depot0)))
)
(:durative-action drop_hoist1_crate5_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate5 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?depot1-1-1))
  (at end (placed ?crate5 ?depot1)))
)
(:durative-action drop_hoist1_crate5_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate5 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?depot1-1-2))
  (at end (placed ?crate5 ?depot1)))
)
(:durative-action drop_hoist1_crate5_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate5 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?depot1-2-1))
  (at end (placed ?crate5 ?depot1)))
)
(:durative-action drop_hoist1_crate5_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate5 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?depot1-2-2))
  (at end (placed ?crate5 ?depot1)))
)
(:durative-action drop_hoist1_crate5_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate5 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?depot0-1-1))
  (at end (placed ?crate5 ?depot0)))
)
(:durative-action drop_hoist1_crate5_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate5 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?depot0-2-2))
  (at end (placed ?crate5 ?depot0)))
)
(:durative-action drop_hoist1_crate5_container-0-0_container0
:parameters (?hoist1 - hoist ?crate5 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?container-0-0))
  (at end (placed ?crate5 ?container0)))
)
(:durative-action drop_hoist1_crate5_container-0-1_container0
:parameters (?hoist1 - hoist ?crate5 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?container-0-1))
  (at end (placed ?crate5 ?container0)))
)
(:durative-action drop_hoist1_crate5_container-0-2_container0
:parameters (?hoist1 - hoist ?crate5 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?container-0-2))
  (at end (placed ?crate5 ?container0)))
)
(:durative-action drop_hoist1_crate5_container-0-3_container0
:parameters (?hoist1 - hoist ?crate5 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?container-0-3))
  (at end (placed ?crate5 ?container0)))
)
(:durative-action drop_hoist1_crate5_container-1-1_container1
:parameters (?hoist1 - hoist ?crate5 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?container-1-1))
  (at end (placed ?crate5 ?container1)))
)
(:durative-action drop_hoist1_crate5_container-1-2_container1
:parameters (?hoist1 - hoist ?crate5 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?container-1-2))
  (at end (placed ?crate5 ?container1)))
)
(:durative-action drop_hoist1_crate5_container-1-3_container1
:parameters (?hoist1 - hoist ?crate5 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist1 ?crate5))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist1 ?crate5)))
  (at end (available ?hoist1))
  (at end (in ?crate5 ?container-1-3))
  (at end (placed ?crate5 ?container1)))
)
(:durative-action drop_hoist1_crate0_container-1-1_container1
:parameters (?hoist1 - hoist ?crate0 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?container-1-1))
  (at end (placed ?crate0 ?container1)))
)
(:durative-action drop_hoist1_crate1_container-1-1_container1
:parameters (?hoist1 - hoist ?crate1 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?container-1-1))
  (at end (placed ?crate1 ?container1)))
)
(:durative-action drop_hoist1_crate2_container-1-1_container1
:parameters (?hoist1 - hoist ?crate2 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?container-1-1))
  (at end (placed ?crate2 ?container1)))
)
(:durative-action drop_hoist1_crate3_container-1-1_container1
:parameters (?hoist1 - hoist ?crate3 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?container-1-1))
  (at end (placed ?crate3 ?container1)))
)
(:durative-action drop_hoist0_crate0_container-1-1_container1
:parameters (?hoist0 - hoist ?crate0 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?container-1-1))
  (at end (placed ?crate0 ?container1)))
)
(:durative-action drop_hoist0_crate1_container-1-1_container1
:parameters (?hoist0 - hoist ?crate1 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?container-1-1))
  (at end (placed ?crate1 ?container1)))
)
(:durative-action drop_hoist0_crate2_container-1-1_container1
:parameters (?hoist0 - hoist ?crate2 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?container-1-1))
  (at end (placed ?crate2 ?container1)))
)
(:durative-action drop_hoist0_crate3_container-1-1_container1
:parameters (?hoist0 - hoist ?crate3 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?container-1-1))
  (at end (placed ?crate3 ?container1)))
)
(:durative-action drop_hoist1_crate6_container-1-1_container1
:parameters (?hoist1 - hoist ?crate6 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?container-1-1))
  (at end (placed ?crate6 ?container1)))
)
(:durative-action drop_hoist1_crate7_container-1-1_container1
:parameters (?hoist1 - hoist ?crate7 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?container-1-1))
  (at end (placed ?crate7 ?container1)))
)
(:durative-action drop_hoist0_crate4_container-1-1_container1
:parameters (?hoist0 - hoist ?crate4 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?container-1-1))
  (at end (placed ?crate4 ?container1)))
)
(:durative-action drop_hoist0_crate5_container-1-1_container1
:parameters (?hoist0 - hoist ?crate5 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?container-1-1))
  (at end (placed ?crate5 ?container1)))
)
(:durative-action drop_hoist0_crate6_container-1-1_container1
:parameters (?hoist0 - hoist ?crate6 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?container-1-1))
  (at end (placed ?crate6 ?container1)))
)
(:durative-action drop_hoist0_crate7_container-1-1_container1
:parameters (?hoist0 - hoist ?crate7 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-1))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-1)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?container-1-1))
  (at end (placed ?crate7 ?container1)))
)
(:durative-action drop_hoist1_crate6_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate6 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?depot0-2-1))
  (at end (placed ?crate6 ?depot0)))
)
(:durative-action drop_hoist1_crate6_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate6 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?depot0-1-2))
  (at end (placed ?crate6 ?depot0)))
)
(:durative-action drop_hoist1_crate6_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate6 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?depot1-1-1))
  (at end (placed ?crate6 ?depot1)))
)
(:durative-action drop_hoist1_crate6_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate6 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?depot1-1-2))
  (at end (placed ?crate6 ?depot1)))
)
(:durative-action drop_hoist1_crate6_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate6 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?depot1-2-1))
  (at end (placed ?crate6 ?depot1)))
)
(:durative-action drop_hoist1_crate6_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate6 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?depot1-2-2))
  (at end (placed ?crate6 ?depot1)))
)
(:durative-action drop_hoist1_crate6_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate6 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?depot0-1-1))
  (at end (placed ?crate6 ?depot0)))
)
(:durative-action drop_hoist1_crate6_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate6 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?depot0-2-2))
  (at end (placed ?crate6 ?depot0)))
)
(:durative-action drop_hoist1_crate6_container-0-0_container0
:parameters (?hoist1 - hoist ?crate6 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?container-0-0))
  (at end (placed ?crate6 ?container0)))
)
(:durative-action drop_hoist1_crate6_container-0-1_container0
:parameters (?hoist1 - hoist ?crate6 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?container-0-1))
  (at end (placed ?crate6 ?container0)))
)
(:durative-action drop_hoist1_crate6_container-0-2_container0
:parameters (?hoist1 - hoist ?crate6 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?container-0-2))
  (at end (placed ?crate6 ?container0)))
)
(:durative-action drop_hoist1_crate6_container-0-3_container0
:parameters (?hoist1 - hoist ?crate6 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?container-0-3))
  (at end (placed ?crate6 ?container0)))
)
(:durative-action drop_hoist1_crate6_container-1-2_container1
:parameters (?hoist1 - hoist ?crate6 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?container-1-2))
  (at end (placed ?crate6 ?container1)))
)
(:durative-action drop_hoist1_crate6_container-1-3_container1
:parameters (?hoist1 - hoist ?crate6 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist1 ?crate6))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist1 ?crate6)))
  (at end (available ?hoist1))
  (at end (in ?crate6 ?container-1-3))
  (at end (placed ?crate6 ?container1)))
)
(:durative-action drop_hoist1_crate0_container-1-2_container1
:parameters (?hoist1 - hoist ?crate0 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?container-1-2))
  (at end (placed ?crate0 ?container1)))
)
(:durative-action drop_hoist1_crate1_container-1-2_container1
:parameters (?hoist1 - hoist ?crate1 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?container-1-2))
  (at end (placed ?crate1 ?container1)))
)
(:durative-action drop_hoist1_crate2_container-1-2_container1
:parameters (?hoist1 - hoist ?crate2 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?container-1-2))
  (at end (placed ?crate2 ?container1)))
)
(:durative-action drop_hoist1_crate3_container-1-2_container1
:parameters (?hoist1 - hoist ?crate3 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?container-1-2))
  (at end (placed ?crate3 ?container1)))
)
(:durative-action drop_hoist0_crate0_container-1-2_container1
:parameters (?hoist0 - hoist ?crate0 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?container-1-2))
  (at end (placed ?crate0 ?container1)))
)
(:durative-action drop_hoist0_crate1_container-1-2_container1
:parameters (?hoist0 - hoist ?crate1 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?container-1-2))
  (at end (placed ?crate1 ?container1)))
)
(:durative-action drop_hoist0_crate2_container-1-2_container1
:parameters (?hoist0 - hoist ?crate2 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?container-1-2))
  (at end (placed ?crate2 ?container1)))
)
(:durative-action drop_hoist0_crate3_container-1-2_container1
:parameters (?hoist0 - hoist ?crate3 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?container-1-2))
  (at end (placed ?crate3 ?container1)))
)
(:durative-action drop_hoist1_crate7_container-1-2_container1
:parameters (?hoist1 - hoist ?crate7 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?container-1-2))
  (at end (placed ?crate7 ?container1)))
)
(:durative-action drop_hoist0_crate4_container-1-2_container1
:parameters (?hoist0 - hoist ?crate4 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?container-1-2))
  (at end (placed ?crate4 ?container1)))
)
(:durative-action drop_hoist0_crate5_container-1-2_container1
:parameters (?hoist0 - hoist ?crate5 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?container-1-2))
  (at end (placed ?crate5 ?container1)))
)
(:durative-action drop_hoist0_crate6_container-1-2_container1
:parameters (?hoist0 - hoist ?crate6 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?container-1-2))
  (at end (placed ?crate6 ?container1)))
)
(:durative-action drop_hoist0_crate7_container-1-2_container1
:parameters (?hoist0 - hoist ?crate7 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-2))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-2)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?container-1-2))
  (at end (placed ?crate7 ?container1)))
)
(:durative-action drop_hoist1_crate7_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate7 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?depot0-2-1))
  (at end (placed ?crate7 ?depot0)))
)
(:durative-action drop_hoist1_crate7_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate7 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?depot0-1-2))
  (at end (placed ?crate7 ?depot0)))
)
(:durative-action drop_hoist1_crate7_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate7 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?depot1-1-1))
  (at end (placed ?crate7 ?depot1)))
)
(:durative-action drop_hoist1_crate7_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate7 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?depot1-1-2))
  (at end (placed ?crate7 ?depot1)))
)
(:durative-action drop_hoist1_crate7_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate7 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?depot1-2-1))
  (at end (placed ?crate7 ?depot1)))
)
(:durative-action drop_hoist1_crate7_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate7 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?depot1-2-2))
  (at end (placed ?crate7 ?depot1)))
)
(:durative-action drop_hoist1_crate7_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate7 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?depot0-1-1))
  (at end (placed ?crate7 ?depot0)))
)
(:durative-action drop_hoist1_crate7_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate7 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?depot0-2-2))
  (at end (placed ?crate7 ?depot0)))
)
(:durative-action drop_hoist1_crate7_container-0-0_container0
:parameters (?hoist1 - hoist ?crate7 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?container-0-0))
  (at end (placed ?crate7 ?container0)))
)
(:durative-action drop_hoist1_crate7_container-0-1_container0
:parameters (?hoist1 - hoist ?crate7 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?container-0-1))
  (at end (placed ?crate7 ?container0)))
)
(:durative-action drop_hoist1_crate7_container-0-2_container0
:parameters (?hoist1 - hoist ?crate7 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?container-0-2))
  (at end (placed ?crate7 ?container0)))
)
(:durative-action drop_hoist1_crate7_container-0-3_container0
:parameters (?hoist1 - hoist ?crate7 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?container-0-3))
  (at end (placed ?crate7 ?container0)))
)
(:durative-action drop_hoist1_crate7_container-1-3_container1
:parameters (?hoist1 - hoist ?crate7 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist1 ?crate7))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist1 ?crate7)))
  (at end (available ?hoist1))
  (at end (in ?crate7 ?container-1-3))
  (at end (placed ?crate7 ?container1)))
)
(:durative-action drop_hoist1_crate0_container-1-3_container1
:parameters (?hoist1 - hoist ?crate0 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist1 ?crate0))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist1 ?crate0)))
  (at end (available ?hoist1))
  (at end (in ?crate0 ?container-1-3))
  (at end (placed ?crate0 ?container1)))
)
(:durative-action drop_hoist1_crate1_container-1-3_container1
:parameters (?hoist1 - hoist ?crate1 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist1 ?crate1))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist1 ?crate1)))
  (at end (available ?hoist1))
  (at end (in ?crate1 ?container-1-3))
  (at end (placed ?crate1 ?container1)))
)
(:durative-action drop_hoist1_crate2_container-1-3_container1
:parameters (?hoist1 - hoist ?crate2 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist1 ?crate2))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist1 ?crate2)))
  (at end (available ?hoist1))
  (at end (in ?crate2 ?container-1-3))
  (at end (placed ?crate2 ?container1)))
)
(:durative-action drop_hoist1_crate3_container-1-3_container1
:parameters (?hoist1 - hoist ?crate3 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist1 ?crate3))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist1 ?crate3)))
  (at end (available ?hoist1))
  (at end (in ?crate3 ?container-1-3))
  (at end (placed ?crate3 ?container1)))
)
(:durative-action drop_hoist0_crate0_container-1-3_container1
:parameters (?hoist0 - hoist ?crate0 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist0 ?crate0))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist0 ?crate0)))
  (at end (available ?hoist0))
  (at end (in ?crate0 ?container-1-3))
  (at end (placed ?crate0 ?container1)))
)
(:durative-action drop_hoist0_crate1_container-1-3_container1
:parameters (?hoist0 - hoist ?crate1 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist0 ?crate1))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist0 ?crate1)))
  (at end (available ?hoist0))
  (at end (in ?crate1 ?container-1-3))
  (at end (placed ?crate1 ?container1)))
)
(:durative-action drop_hoist0_crate2_container-1-3_container1
:parameters (?hoist0 - hoist ?crate2 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist0 ?crate2))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist0 ?crate2)))
  (at end (available ?hoist0))
  (at end (in ?crate2 ?container-1-3))
  (at end (placed ?crate2 ?container1)))
)
(:durative-action drop_hoist0_crate3_container-1-3_container1
:parameters (?hoist0 - hoist ?crate3 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist0 ?crate3))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist0 ?crate3)))
  (at end (available ?hoist0))
  (at end (in ?crate3 ?container-1-3))
  (at end (placed ?crate3 ?container1)))
)
(:durative-action drop_hoist0_crate4_container-1-3_container1
:parameters (?hoist0 - hoist ?crate4 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?container-1-3))
  (at end (placed ?crate4 ?container1)))
)
(:durative-action drop_hoist0_crate5_container-1-3_container1
:parameters (?hoist0 - hoist ?crate5 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?container-1-3))
  (at end (placed ?crate5 ?container1)))
)
(:durative-action drop_hoist0_crate6_container-1-3_container1
:parameters (?hoist0 - hoist ?crate6 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?container-1-3))
  (at end (placed ?crate6 ?container1)))
)
(:durative-action drop_hoist0_crate7_container-1-3_container1
:parameters (?hoist0 - hoist ?crate7 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-1-3))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at end (not (clear ?container-1-3)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?container-1-3))
  (at end (placed ?crate7 ?container1)))
)
(:durative-action drop_hoist0_crate4_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate4 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?depot0-2-1))
  (at end (placed ?crate4 ?depot0)))
)
(:durative-action drop_hoist0_crate4_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate4 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?depot0-1-2))
  (at end (placed ?crate4 ?depot0)))
)
(:durative-action drop_hoist0_crate4_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate4 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?depot1-1-1))
  (at end (placed ?crate4 ?depot1)))
)
(:durative-action drop_hoist0_crate4_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate4 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?depot1-1-2))
  (at end (placed ?crate4 ?depot1)))
)
(:durative-action drop_hoist0_crate4_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate4 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?depot1-2-1))
  (at end (placed ?crate4 ?depot1)))
)
(:durative-action drop_hoist0_crate4_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate4 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?depot1-2-2))
  (at end (placed ?crate4 ?depot1)))
)
(:durative-action drop_hoist0_crate4_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate4 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?depot0-1-1))
  (at end (placed ?crate4 ?depot0)))
)
(:durative-action drop_hoist0_crate4_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate4 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?depot0-2-2))
  (at end (placed ?crate4 ?depot0)))
)
(:durative-action drop_hoist0_crate4_container-0-0_container0
:parameters (?hoist0 - hoist ?crate4 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?container-0-0))
  (at end (placed ?crate4 ?container0)))
)
(:durative-action drop_hoist0_crate4_container-0-1_container0
:parameters (?hoist0 - hoist ?crate4 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?container-0-1))
  (at end (placed ?crate4 ?container0)))
)
(:durative-action drop_hoist0_crate4_container-0-2_container0
:parameters (?hoist0 - hoist ?crate4 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?container-0-2))
  (at end (placed ?crate4 ?container0)))
)
(:durative-action drop_hoist0_crate4_container-0-3_container0
:parameters (?hoist0 - hoist ?crate4 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist0 ?crate4))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist0 ?crate4)))
  (at end (available ?hoist0))
  (at end (in ?crate4 ?container-0-3))
  (at end (placed ?crate4 ?container0)))
)
(:durative-action drop_hoist0_crate5_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate5 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?depot0-2-1))
  (at end (placed ?crate5 ?depot0)))
)
(:durative-action drop_hoist0_crate5_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate5 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?depot0-1-2))
  (at end (placed ?crate5 ?depot0)))
)
(:durative-action drop_hoist0_crate5_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate5 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?depot1-1-1))
  (at end (placed ?crate5 ?depot1)))
)
(:durative-action drop_hoist0_crate5_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate5 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?depot1-1-2))
  (at end (placed ?crate5 ?depot1)))
)
(:durative-action drop_hoist0_crate5_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate5 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?depot1-2-1))
  (at end (placed ?crate5 ?depot1)))
)
(:durative-action drop_hoist0_crate5_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate5 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?depot1-2-2))
  (at end (placed ?crate5 ?depot1)))
)
(:durative-action drop_hoist0_crate5_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate5 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?depot0-1-1))
  (at end (placed ?crate5 ?depot0)))
)
(:durative-action drop_hoist0_crate5_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate5 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?depot0-2-2))
  (at end (placed ?crate5 ?depot0)))
)
(:durative-action drop_hoist0_crate5_container-0-0_container0
:parameters (?hoist0 - hoist ?crate5 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?container-0-0))
  (at end (placed ?crate5 ?container0)))
)
(:durative-action drop_hoist0_crate5_container-0-1_container0
:parameters (?hoist0 - hoist ?crate5 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?container-0-1))
  (at end (placed ?crate5 ?container0)))
)
(:durative-action drop_hoist0_crate5_container-0-2_container0
:parameters (?hoist0 - hoist ?crate5 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?container-0-2))
  (at end (placed ?crate5 ?container0)))
)
(:durative-action drop_hoist0_crate5_container-0-3_container0
:parameters (?hoist0 - hoist ?crate5 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist0 ?crate5))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist0 ?crate5)))
  (at end (available ?hoist0))
  (at end (in ?crate5 ?container-0-3))
  (at end (placed ?crate5 ?container0)))
)
(:durative-action drop_hoist0_crate6_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate6 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?depot0-2-1))
  (at end (placed ?crate6 ?depot0)))
)
(:durative-action drop_hoist0_crate6_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate6 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?depot0-1-2))
  (at end (placed ?crate6 ?depot0)))
)
(:durative-action drop_hoist0_crate6_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate6 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?depot1-1-1))
  (at end (placed ?crate6 ?depot1)))
)
(:durative-action drop_hoist0_crate6_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate6 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?depot1-1-2))
  (at end (placed ?crate6 ?depot1)))
)
(:durative-action drop_hoist0_crate6_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate6 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?depot1-2-1))
  (at end (placed ?crate6 ?depot1)))
)
(:durative-action drop_hoist0_crate6_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate6 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?depot1-2-2))
  (at end (placed ?crate6 ?depot1)))
)
(:durative-action drop_hoist0_crate6_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate6 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?depot0-1-1))
  (at end (placed ?crate6 ?depot0)))
)
(:durative-action drop_hoist0_crate6_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate6 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?depot0-2-2))
  (at end (placed ?crate6 ?depot0)))
)
(:durative-action drop_hoist0_crate6_container-0-0_container0
:parameters (?hoist0 - hoist ?crate6 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?container-0-0))
  (at end (placed ?crate6 ?container0)))
)
(:durative-action drop_hoist0_crate6_container-0-1_container0
:parameters (?hoist0 - hoist ?crate6 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?container-0-1))
  (at end (placed ?crate6 ?container0)))
)
(:durative-action drop_hoist0_crate6_container-0-2_container0
:parameters (?hoist0 - hoist ?crate6 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?container-0-2))
  (at end (placed ?crate6 ?container0)))
)
(:durative-action drop_hoist0_crate6_container-0-3_container0
:parameters (?hoist0 - hoist ?crate6 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist0 ?crate6))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist0 ?crate6)))
  (at end (available ?hoist0))
  (at end (in ?crate6 ?container-0-3))
  (at end (placed ?crate6 ?container0)))
)
(:durative-action drop_hoist0_crate7_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate7 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-1))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-1)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?depot0-2-1))
  (at end (placed ?crate7 ?depot0)))
)
(:durative-action drop_hoist0_crate7_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate7 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-2))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-2)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?depot0-1-2))
  (at end (placed ?crate7 ?depot0)))
)
(:durative-action drop_hoist0_crate7_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate7 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-1))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-1)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?depot1-1-1))
  (at end (placed ?crate7 ?depot1)))
)
(:durative-action drop_hoist0_crate7_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate7 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-1-2))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-1-2)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?depot1-1-2))
  (at end (placed ?crate7 ?depot1)))
)
(:durative-action drop_hoist0_crate7_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate7 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-1))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-1)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?depot1-2-1))
  (at end (placed ?crate7 ?depot1)))
)
(:durative-action drop_hoist0_crate7_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate7 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot1-2-2))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at end (not (clear ?depot1-2-2)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?depot1-2-2))
  (at end (placed ?crate7 ?depot1)))
)
(:durative-action drop_hoist0_crate7_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate7 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-1-1))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-1-1)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?depot0-1-1))
  (at end (placed ?crate7 ?depot0)))
)
(:durative-action drop_hoist0_crate7_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate7 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?depot0-2-2))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at end (not (clear ?depot0-2-2)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?depot0-2-2))
  (at end (placed ?crate7 ?depot0)))
)
(:durative-action drop_hoist0_crate7_container-0-0_container0
:parameters (?hoist0 - hoist ?crate7 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-0))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-0)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?container-0-0))
  (at end (placed ?crate7 ?container0)))
)
(:durative-action drop_hoist0_crate7_container-0-1_container0
:parameters (?hoist0 - hoist ?crate7 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-1))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-1)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?container-0-1))
  (at end (placed ?crate7 ?container0)))
)
(:durative-action drop_hoist0_crate7_container-0-2_container0
:parameters (?hoist0 - hoist ?crate7 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-2))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-2)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?container-0-2))
  (at end (placed ?crate7 ?container0)))
)
(:durative-action drop_hoist0_crate7_container-0-3_container0
:parameters (?hoist0 - hoist ?crate7 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (clear ?container-0-3))
  (at start (lifting ?hoist0 ?crate7))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at end (not (clear ?container-0-3)))
  (at end (not (lifting ?hoist0 ?crate7)))
  (at end (available ?hoist0))
  (at end (in ?crate7 ?container-0-3))
  (at end (placed ?crate7 ?container0)))
)
(:durative-action lift_hoist0_crate4_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate4 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?depot0-2-1))
  (at start (placed ?crate4 ?depot0))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate4 ?depot0))))
)
(:durative-action lift_hoist1_crate4_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate4 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?depot0-2-1))
  (at start (placed ?crate4 ?depot0))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate4 ?depot0))))
)
(:durative-action lift_hoist0_crate4_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate4 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?depot0-1-2))
  (at start (placed ?crate4 ?depot0))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate4 ?depot0))))
)
(:durative-action lift_hoist0_crate4_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate4 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?depot0-1-1))
  (at start (placed ?crate4 ?depot0))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate4 ?depot0))))
)
(:durative-action lift_hoist0_crate4_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate4 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?depot0-2-2))
  (at start (placed ?crate4 ?depot0))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate4 ?depot0))))
)
(:durative-action lift_hoist1_crate4_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate4 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?depot0-1-2))
  (at start (placed ?crate4 ?depot0))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate4 ?depot0))))
)
(:durative-action lift_hoist1_crate4_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate4 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?depot0-1-1))
  (at start (placed ?crate4 ?depot0))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate4 ?depot0))))
)
(:durative-action lift_hoist1_crate4_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate4 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?depot0-2-2))
  (at start (placed ?crate4 ?depot0))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate4 ?depot0))))
)
(:durative-action lift_hoist0_crate4_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate4 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?depot1-1-1))
  (at start (placed ?crate4 ?depot1))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate4 ?depot1))))
)
(:durative-action lift_hoist1_crate4_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate4 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?depot1-1-1))
  (at start (placed ?crate4 ?depot1))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate4 ?depot1))))
)
(:durative-action lift_hoist0_crate4_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate4 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?depot1-1-2))
  (at start (placed ?crate4 ?depot1))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate4 ?depot1))))
)
(:durative-action lift_hoist0_crate4_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate4 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?depot1-2-1))
  (at start (placed ?crate4 ?depot1))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate4 ?depot1))))
)
(:durative-action lift_hoist0_crate4_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate4 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?depot1-2-2))
  (at start (placed ?crate4 ?depot1))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate4 ?depot1))))
)
(:durative-action lift_hoist1_crate4_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate4 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?depot1-1-2))
  (at start (placed ?crate4 ?depot1))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate4 ?depot1))))
)
(:durative-action lift_hoist1_crate4_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate4 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?depot1-2-1))
  (at start (placed ?crate4 ?depot1))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate4 ?depot1))))
)
(:durative-action lift_hoist1_crate4_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate4 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?depot1-2-2))
  (at start (placed ?crate4 ?depot1))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate4 ?depot1))))
)
(:durative-action lift_hoist0_crate4_container-0-0_container0
:parameters (?hoist0 - hoist ?crate4 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?container-0-0))
  (at start (placed ?crate4 ?container0))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate4 ?container0))))
)
(:durative-action lift_hoist1_crate4_container-0-0_container0
:parameters (?hoist1 - hoist ?crate4 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?container-0-0))
  (at start (placed ?crate4 ?container0))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate4 ?container0))))
)
(:durative-action lift_hoist0_crate4_container-0-1_container0
:parameters (?hoist0 - hoist ?crate4 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?container-0-1))
  (at start (placed ?crate4 ?container0))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate4 ?container0))))
)
(:durative-action lift_hoist0_crate4_container-0-2_container0
:parameters (?hoist0 - hoist ?crate4 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?container-0-2))
  (at start (placed ?crate4 ?container0))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate4 ?container0))))
)
(:durative-action lift_hoist0_crate4_container-0-3_container0
:parameters (?hoist0 - hoist ?crate4 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?container-0-3))
  (at start (placed ?crate4 ?container0))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate4 ?container0))))
)
(:durative-action lift_hoist1_crate4_container-0-1_container0
:parameters (?hoist1 - hoist ?crate4 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?container-0-1))
  (at start (placed ?crate4 ?container0))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate4 ?container0))))
)
(:durative-action lift_hoist1_crate4_container-0-2_container0
:parameters (?hoist1 - hoist ?crate4 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?container-0-2))
  (at start (placed ?crate4 ?container0))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate4 ?container0))))
)
(:durative-action lift_hoist1_crate4_container-0-3_container0
:parameters (?hoist1 - hoist ?crate4 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?container-0-3))
  (at start (placed ?crate4 ?container0))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate4 ?container0))))
)
(:durative-action lift_hoist0_crate4_container-1-1_container1
:parameters (?hoist0 - hoist ?crate4 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?container-1-1))
  (at start (placed ?crate4 ?container1))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate4 ?container1))))
)
(:durative-action lift_hoist1_crate4_container-1-1_container1
:parameters (?hoist1 - hoist ?crate4 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?container-1-1))
  (at start (placed ?crate4 ?container1))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate4 ?container1))))
)
(:durative-action lift_hoist0_crate4_container-1-2_container1
:parameters (?hoist0 - hoist ?crate4 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?container-1-2))
  (at start (placed ?crate4 ?container1))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate4 ?container1))))
)
(:durative-action lift_hoist1_crate4_container-1-2_container1
:parameters (?hoist1 - hoist ?crate4 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?container-1-2))
  (at start (placed ?crate4 ?container1))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate4 ?container1))))
)
(:durative-action lift_hoist0_crate4_container-1-3_container1
:parameters (?hoist0 - hoist ?crate4 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate4 ?container-1-3))
  (at start (placed ?crate4 ?container1))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate4))
  (at end (not (in ?crate4 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate4 ?container1))))
)
(:durative-action lift_hoist1_crate4_container-1-3_container1
:parameters (?hoist1 - hoist ?crate4 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate4 ?container-1-3))
  (at start (placed ?crate4 ?container1))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate4))
  (at end (not (in ?crate4 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate4 ?container1))))
)
(:durative-action lift_hoist0_crate0_container-1-0_container1
:parameters (?hoist0 - hoist ?crate0 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?container-1-0))
  (at start (placed ?crate0 ?container1))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate0 ?container1))))
)
(:durative-action lift_hoist1_crate0_container-1-0_container1
:parameters (?hoist1 - hoist ?crate0 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?container-1-0))
  (at start (placed ?crate0 ?container1))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate0 ?container1))))
)
(:durative-action lift_hoist0_crate0_container-1-1_container1
:parameters (?hoist0 - hoist ?crate0 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?container-1-1))
  (at start (placed ?crate0 ?container1))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate0 ?container1))))
)
(:durative-action lift_hoist0_crate0_container-1-2_container1
:parameters (?hoist0 - hoist ?crate0 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?container-1-2))
  (at start (placed ?crate0 ?container1))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate0 ?container1))))
)
(:durative-action lift_hoist0_crate0_container-1-3_container1
:parameters (?hoist0 - hoist ?crate0 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate0 ?container-1-3))
  (at start (placed ?crate0 ?container1))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate0))
  (at end (not (in ?crate0 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate0 ?container1))))
)
(:durative-action lift_hoist1_crate0_container-1-1_container1
:parameters (?hoist1 - hoist ?crate0 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?container-1-1))
  (at start (placed ?crate0 ?container1))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate0 ?container1))))
)
(:durative-action lift_hoist1_crate0_container-1-2_container1
:parameters (?hoist1 - hoist ?crate0 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?container-1-2))
  (at start (placed ?crate0 ?container1))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate0 ?container1))))
)
(:durative-action lift_hoist1_crate0_container-1-3_container1
:parameters (?hoist1 - hoist ?crate0 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate0 ?container-1-3))
  (at start (placed ?crate0 ?container1))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate0))
  (at end (not (in ?crate0 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate0 ?container1))))
)
(:durative-action lift_hoist0_crate1_container-1-0_container1
:parameters (?hoist0 - hoist ?crate1 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?container-1-0))
  (at start (placed ?crate1 ?container1))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate1 ?container1))))
)
(:durative-action lift_hoist1_crate1_container-1-0_container1
:parameters (?hoist1 - hoist ?crate1 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?container-1-0))
  (at start (placed ?crate1 ?container1))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate1 ?container1))))
)
(:durative-action lift_hoist0_crate1_container-1-1_container1
:parameters (?hoist0 - hoist ?crate1 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?container-1-1))
  (at start (placed ?crate1 ?container1))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate1 ?container1))))
)
(:durative-action lift_hoist0_crate1_container-1-2_container1
:parameters (?hoist0 - hoist ?crate1 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?container-1-2))
  (at start (placed ?crate1 ?container1))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate1 ?container1))))
)
(:durative-action lift_hoist0_crate1_container-1-3_container1
:parameters (?hoist0 - hoist ?crate1 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate1 ?container-1-3))
  (at start (placed ?crate1 ?container1))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate1))
  (at end (not (in ?crate1 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate1 ?container1))))
)
(:durative-action lift_hoist1_crate1_container-1-1_container1
:parameters (?hoist1 - hoist ?crate1 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?container-1-1))
  (at start (placed ?crate1 ?container1))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate1 ?container1))))
)
(:durative-action lift_hoist1_crate1_container-1-2_container1
:parameters (?hoist1 - hoist ?crate1 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?container-1-2))
  (at start (placed ?crate1 ?container1))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate1 ?container1))))
)
(:durative-action lift_hoist1_crate1_container-1-3_container1
:parameters (?hoist1 - hoist ?crate1 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate1 ?container-1-3))
  (at start (placed ?crate1 ?container1))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate1))
  (at end (not (in ?crate1 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate1 ?container1))))
)
(:durative-action lift_hoist0_crate2_container-1-0_container1
:parameters (?hoist0 - hoist ?crate2 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?container-1-0))
  (at start (placed ?crate2 ?container1))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate2 ?container1))))
)
(:durative-action lift_hoist1_crate2_container-1-0_container1
:parameters (?hoist1 - hoist ?crate2 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?container-1-0))
  (at start (placed ?crate2 ?container1))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate2 ?container1))))
)
(:durative-action lift_hoist0_crate2_container-1-1_container1
:parameters (?hoist0 - hoist ?crate2 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?container-1-1))
  (at start (placed ?crate2 ?container1))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate2 ?container1))))
)
(:durative-action lift_hoist0_crate2_container-1-2_container1
:parameters (?hoist0 - hoist ?crate2 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?container-1-2))
  (at start (placed ?crate2 ?container1))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate2 ?container1))))
)
(:durative-action lift_hoist0_crate2_container-1-3_container1
:parameters (?hoist0 - hoist ?crate2 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate2 ?container-1-3))
  (at start (placed ?crate2 ?container1))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate2))
  (at end (not (in ?crate2 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate2 ?container1))))
)
(:durative-action lift_hoist1_crate2_container-1-1_container1
:parameters (?hoist1 - hoist ?crate2 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?container-1-1))
  (at start (placed ?crate2 ?container1))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate2 ?container1))))
)
(:durative-action lift_hoist1_crate2_container-1-2_container1
:parameters (?hoist1 - hoist ?crate2 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?container-1-2))
  (at start (placed ?crate2 ?container1))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate2 ?container1))))
)
(:durative-action lift_hoist1_crate2_container-1-3_container1
:parameters (?hoist1 - hoist ?crate2 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate2 ?container-1-3))
  (at start (placed ?crate2 ?container1))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate2))
  (at end (not (in ?crate2 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate2 ?container1))))
)
(:durative-action lift_hoist0_crate3_container-1-0_container1
:parameters (?hoist0 - hoist ?crate3 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?container-1-0))
  (at start (placed ?crate3 ?container1))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate3 ?container1))))
)
(:durative-action lift_hoist1_crate3_container-1-0_container1
:parameters (?hoist1 - hoist ?crate3 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?container-1-0))
  (at start (placed ?crate3 ?container1))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate3 ?container1))))
)
(:durative-action lift_hoist0_crate3_container-1-1_container1
:parameters (?hoist0 - hoist ?crate3 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?container-1-1))
  (at start (placed ?crate3 ?container1))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate3 ?container1))))
)
(:durative-action lift_hoist0_crate3_container-1-2_container1
:parameters (?hoist0 - hoist ?crate3 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?container-1-2))
  (at start (placed ?crate3 ?container1))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate3 ?container1))))
)
(:durative-action lift_hoist0_crate3_container-1-3_container1
:parameters (?hoist0 - hoist ?crate3 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate3 ?container-1-3))
  (at start (placed ?crate3 ?container1))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate3))
  (at end (not (in ?crate3 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate3 ?container1))))
)
(:durative-action lift_hoist1_crate3_container-1-1_container1
:parameters (?hoist1 - hoist ?crate3 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?container-1-1))
  (at start (placed ?crate3 ?container1))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate3 ?container1))))
)
(:durative-action lift_hoist1_crate3_container-1-2_container1
:parameters (?hoist1 - hoist ?crate3 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?container-1-2))
  (at start (placed ?crate3 ?container1))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate3 ?container1))))
)
(:durative-action lift_hoist1_crate3_container-1-3_container1
:parameters (?hoist1 - hoist ?crate3 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate3 ?container-1-3))
  (at start (placed ?crate3 ?container1))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate3))
  (at end (not (in ?crate3 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate3 ?container1))))
)
(:durative-action lift_hoist0_crate5_container-1-0_container1
:parameters (?hoist0 - hoist ?crate5 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?container-1-0))
  (at start (placed ?crate5 ?container1))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate5 ?container1))))
)
(:durative-action lift_hoist1_crate5_container-1-0_container1
:parameters (?hoist1 - hoist ?crate5 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?container-1-0))
  (at start (placed ?crate5 ?container1))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate5 ?container1))))
)
(:durative-action lift_hoist0_crate6_container-1-0_container1
:parameters (?hoist0 - hoist ?crate6 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?container-1-0))
  (at start (placed ?crate6 ?container1))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate6 ?container1))))
)
(:durative-action lift_hoist1_crate6_container-1-0_container1
:parameters (?hoist1 - hoist ?crate6 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?container-1-0))
  (at start (placed ?crate6 ?container1))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate6 ?container1))))
)
(:durative-action lift_hoist0_crate7_container-1-0_container1
:parameters (?hoist0 - hoist ?crate7 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?container-1-0))
  (at start (placed ?crate7 ?container1))
  (over all (position ?hoist0 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate7 ?container1))))
)
(:durative-action lift_hoist1_crate7_container-1-0_container1
:parameters (?hoist1 - hoist ?crate7 - crate ?container-1-0 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?container-1-0))
  (at start (placed ?crate7 ?container1))
  (over all (position ?hoist1 ?container-1-0))
  (over all (location ?container-1-0 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?container-1-0)))
  (at end (clear ?container-1-0))
  (at end (not (placed ?crate7 ?container1))))
)
(:durative-action lift_hoist0_crate5_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate5 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?depot0-2-1))
  (at start (placed ?crate5 ?depot0))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate5 ?depot0))))
)
(:durative-action lift_hoist1_crate5_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate5 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?depot0-2-1))
  (at start (placed ?crate5 ?depot0))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate5 ?depot0))))
)
(:durative-action lift_hoist0_crate5_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate5 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?depot0-1-2))
  (at start (placed ?crate5 ?depot0))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate5 ?depot0))))
)
(:durative-action lift_hoist0_crate5_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate5 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?depot0-1-1))
  (at start (placed ?crate5 ?depot0))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate5 ?depot0))))
)
(:durative-action lift_hoist0_crate5_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate5 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?depot0-2-2))
  (at start (placed ?crate5 ?depot0))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate5 ?depot0))))
)
(:durative-action lift_hoist1_crate5_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate5 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?depot0-1-2))
  (at start (placed ?crate5 ?depot0))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate5 ?depot0))))
)
(:durative-action lift_hoist1_crate5_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate5 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?depot0-1-1))
  (at start (placed ?crate5 ?depot0))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate5 ?depot0))))
)
(:durative-action lift_hoist1_crate5_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate5 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?depot0-2-2))
  (at start (placed ?crate5 ?depot0))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate5 ?depot0))))
)
(:durative-action lift_hoist0_crate5_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate5 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?depot1-1-1))
  (at start (placed ?crate5 ?depot1))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate5 ?depot1))))
)
(:durative-action lift_hoist1_crate5_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate5 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?depot1-1-1))
  (at start (placed ?crate5 ?depot1))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate5 ?depot1))))
)
(:durative-action lift_hoist0_crate5_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate5 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?depot1-1-2))
  (at start (placed ?crate5 ?depot1))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate5 ?depot1))))
)
(:durative-action lift_hoist0_crate5_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate5 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?depot1-2-1))
  (at start (placed ?crate5 ?depot1))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate5 ?depot1))))
)
(:durative-action lift_hoist0_crate5_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate5 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?depot1-2-2))
  (at start (placed ?crate5 ?depot1))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate5 ?depot1))))
)
(:durative-action lift_hoist1_crate5_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate5 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?depot1-1-2))
  (at start (placed ?crate5 ?depot1))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate5 ?depot1))))
)
(:durative-action lift_hoist1_crate5_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate5 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?depot1-2-1))
  (at start (placed ?crate5 ?depot1))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate5 ?depot1))))
)
(:durative-action lift_hoist1_crate5_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate5 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?depot1-2-2))
  (at start (placed ?crate5 ?depot1))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate5 ?depot1))))
)
(:durative-action lift_hoist0_crate5_container-0-0_container0
:parameters (?hoist0 - hoist ?crate5 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?container-0-0))
  (at start (placed ?crate5 ?container0))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate5 ?container0))))
)
(:durative-action lift_hoist1_crate5_container-0-0_container0
:parameters (?hoist1 - hoist ?crate5 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?container-0-0))
  (at start (placed ?crate5 ?container0))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate5 ?container0))))
)
(:durative-action lift_hoist0_crate5_container-0-1_container0
:parameters (?hoist0 - hoist ?crate5 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?container-0-1))
  (at start (placed ?crate5 ?container0))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate5 ?container0))))
)
(:durative-action lift_hoist0_crate5_container-0-2_container0
:parameters (?hoist0 - hoist ?crate5 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?container-0-2))
  (at start (placed ?crate5 ?container0))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate5 ?container0))))
)
(:durative-action lift_hoist0_crate5_container-0-3_container0
:parameters (?hoist0 - hoist ?crate5 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?container-0-3))
  (at start (placed ?crate5 ?container0))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate5 ?container0))))
)
(:durative-action lift_hoist1_crate5_container-0-1_container0
:parameters (?hoist1 - hoist ?crate5 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?container-0-1))
  (at start (placed ?crate5 ?container0))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate5 ?container0))))
)
(:durative-action lift_hoist1_crate5_container-0-2_container0
:parameters (?hoist1 - hoist ?crate5 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?container-0-2))
  (at start (placed ?crate5 ?container0))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate5 ?container0))))
)
(:durative-action lift_hoist1_crate5_container-0-3_container0
:parameters (?hoist1 - hoist ?crate5 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?container-0-3))
  (at start (placed ?crate5 ?container0))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate5 ?container0))))
)
(:durative-action lift_hoist0_crate5_container-1-2_container1
:parameters (?hoist0 - hoist ?crate5 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?container-1-2))
  (at start (placed ?crate5 ?container1))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate5 ?container1))))
)
(:durative-action lift_hoist1_crate5_container-1-2_container1
:parameters (?hoist1 - hoist ?crate5 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?container-1-2))
  (at start (placed ?crate5 ?container1))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate5 ?container1))))
)
(:durative-action lift_hoist0_crate5_container-1-3_container1
:parameters (?hoist0 - hoist ?crate5 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate5 ?container-1-3))
  (at start (placed ?crate5 ?container1))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate5))
  (at end (not (in ?crate5 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate5 ?container1))))
)
(:durative-action lift_hoist1_crate5_container-1-3_container1
:parameters (?hoist1 - hoist ?crate5 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate5 ?container-1-3))
  (at start (placed ?crate5 ?container1))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate5))
  (at end (not (in ?crate5 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate5 ?container1))))
)
(:durative-action lift_hoist0_crate6_container-1-1_container1
:parameters (?hoist0 - hoist ?crate6 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?container-1-1))
  (at start (placed ?crate6 ?container1))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate6 ?container1))))
)
(:durative-action lift_hoist1_crate6_container-1-1_container1
:parameters (?hoist1 - hoist ?crate6 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?container-1-1))
  (at start (placed ?crate6 ?container1))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate6 ?container1))))
)
(:durative-action lift_hoist0_crate7_container-1-1_container1
:parameters (?hoist0 - hoist ?crate7 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?container-1-1))
  (at start (placed ?crate7 ?container1))
  (over all (position ?hoist0 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate7 ?container1))))
)
(:durative-action lift_hoist1_crate7_container-1-1_container1
:parameters (?hoist1 - hoist ?crate7 - crate ?container-1-1 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?container-1-1))
  (at start (placed ?crate7 ?container1))
  (over all (position ?hoist1 ?container-1-1))
  (over all (location ?container-1-1 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?container-1-1)))
  (at end (clear ?container-1-1))
  (at end (not (placed ?crate7 ?container1))))
)
(:durative-action lift_hoist0_crate6_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate6 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?depot0-2-1))
  (at start (placed ?crate6 ?depot0))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate6 ?depot0))))
)
(:durative-action lift_hoist1_crate6_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate6 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?depot0-2-1))
  (at start (placed ?crate6 ?depot0))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate6 ?depot0))))
)
(:durative-action lift_hoist0_crate6_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate6 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?depot0-1-2))
  (at start (placed ?crate6 ?depot0))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate6 ?depot0))))
)
(:durative-action lift_hoist0_crate6_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate6 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?depot0-1-1))
  (at start (placed ?crate6 ?depot0))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate6 ?depot0))))
)
(:durative-action lift_hoist0_crate6_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate6 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?depot0-2-2))
  (at start (placed ?crate6 ?depot0))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate6 ?depot0))))
)
(:durative-action lift_hoist1_crate6_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate6 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?depot0-1-2))
  (at start (placed ?crate6 ?depot0))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate6 ?depot0))))
)
(:durative-action lift_hoist1_crate6_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate6 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?depot0-1-1))
  (at start (placed ?crate6 ?depot0))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate6 ?depot0))))
)
(:durative-action lift_hoist1_crate6_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate6 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?depot0-2-2))
  (at start (placed ?crate6 ?depot0))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate6 ?depot0))))
)
(:durative-action lift_hoist0_crate6_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate6 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?depot1-1-1))
  (at start (placed ?crate6 ?depot1))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate6 ?depot1))))
)
(:durative-action lift_hoist1_crate6_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate6 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?depot1-1-1))
  (at start (placed ?crate6 ?depot1))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate6 ?depot1))))
)
(:durative-action lift_hoist0_crate6_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate6 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?depot1-1-2))
  (at start (placed ?crate6 ?depot1))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate6 ?depot1))))
)
(:durative-action lift_hoist0_crate6_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate6 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?depot1-2-1))
  (at start (placed ?crate6 ?depot1))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate6 ?depot1))))
)
(:durative-action lift_hoist0_crate6_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate6 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?depot1-2-2))
  (at start (placed ?crate6 ?depot1))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate6 ?depot1))))
)
(:durative-action lift_hoist1_crate6_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate6 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?depot1-1-2))
  (at start (placed ?crate6 ?depot1))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate6 ?depot1))))
)
(:durative-action lift_hoist1_crate6_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate6 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?depot1-2-1))
  (at start (placed ?crate6 ?depot1))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate6 ?depot1))))
)
(:durative-action lift_hoist1_crate6_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate6 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?depot1-2-2))
  (at start (placed ?crate6 ?depot1))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate6 ?depot1))))
)
(:durative-action lift_hoist0_crate6_container-0-0_container0
:parameters (?hoist0 - hoist ?crate6 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?container-0-0))
  (at start (placed ?crate6 ?container0))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate6 ?container0))))
)
(:durative-action lift_hoist1_crate6_container-0-0_container0
:parameters (?hoist1 - hoist ?crate6 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?container-0-0))
  (at start (placed ?crate6 ?container0))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate6 ?container0))))
)
(:durative-action lift_hoist0_crate6_container-0-1_container0
:parameters (?hoist0 - hoist ?crate6 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?container-0-1))
  (at start (placed ?crate6 ?container0))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate6 ?container0))))
)
(:durative-action lift_hoist0_crate6_container-0-2_container0
:parameters (?hoist0 - hoist ?crate6 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?container-0-2))
  (at start (placed ?crate6 ?container0))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate6 ?container0))))
)
(:durative-action lift_hoist0_crate6_container-0-3_container0
:parameters (?hoist0 - hoist ?crate6 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?container-0-3))
  (at start (placed ?crate6 ?container0))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate6 ?container0))))
)
(:durative-action lift_hoist1_crate6_container-0-1_container0
:parameters (?hoist1 - hoist ?crate6 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?container-0-1))
  (at start (placed ?crate6 ?container0))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate6 ?container0))))
)
(:durative-action lift_hoist1_crate6_container-0-2_container0
:parameters (?hoist1 - hoist ?crate6 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?container-0-2))
  (at start (placed ?crate6 ?container0))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate6 ?container0))))
)
(:durative-action lift_hoist1_crate6_container-0-3_container0
:parameters (?hoist1 - hoist ?crate6 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?container-0-3))
  (at start (placed ?crate6 ?container0))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate6 ?container0))))
)
(:durative-action lift_hoist0_crate6_container-1-3_container1
:parameters (?hoist0 - hoist ?crate6 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate6 ?container-1-3))
  (at start (placed ?crate6 ?container1))
  (over all (position ?hoist0 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate6))
  (at end (not (in ?crate6 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate6 ?container1))))
)
(:durative-action lift_hoist1_crate6_container-1-3_container1
:parameters (?hoist1 - hoist ?crate6 - crate ?container-1-3 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate6 ?container-1-3))
  (at start (placed ?crate6 ?container1))
  (over all (position ?hoist1 ?container-1-3))
  (over all (location ?container-1-3 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate6))
  (at end (not (in ?crate6 ?container-1-3)))
  (at end (clear ?container-1-3))
  (at end (not (placed ?crate6 ?container1))))
)
(:durative-action lift_hoist0_crate7_container-1-2_container1
:parameters (?hoist0 - hoist ?crate7 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?container-1-2))
  (at start (placed ?crate7 ?container1))
  (over all (position ?hoist0 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate7 ?container1))))
)
(:durative-action lift_hoist1_crate7_container-1-2_container1
:parameters (?hoist1 - hoist ?crate7 - crate ?container-1-2 - section ?container1 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?container-1-2))
  (at start (placed ?crate7 ?container1))
  (over all (position ?hoist1 ?container-1-2))
  (over all (location ?container-1-2 ?container1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?container-1-2)))
  (at end (clear ?container-1-2))
  (at end (not (placed ?crate7 ?container1))))
)
(:durative-action lift_hoist0_crate7_depot0-2-1_depot0
:parameters (?hoist0 - hoist ?crate7 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?depot0-2-1))
  (at start (placed ?crate7 ?depot0))
  (over all (position ?hoist0 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate7 ?depot0))))
)
(:durative-action lift_hoist1_crate7_depot0-2-1_depot0
:parameters (?hoist1 - hoist ?crate7 - crate ?depot0-2-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?depot0-2-1))
  (at start (placed ?crate7 ?depot0))
  (over all (position ?hoist1 ?depot0-2-1))
  (over all (location ?depot0-2-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?depot0-2-1)))
  (at end (clear ?depot0-2-1))
  (at end (not (placed ?crate7 ?depot0))))
)
(:durative-action lift_hoist0_crate7_depot0-1-2_depot0
:parameters (?hoist0 - hoist ?crate7 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?depot0-1-2))
  (at start (placed ?crate7 ?depot0))
  (over all (position ?hoist0 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate7 ?depot0))))
)
(:durative-action lift_hoist0_crate7_depot0-1-1_depot0
:parameters (?hoist0 - hoist ?crate7 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?depot0-1-1))
  (at start (placed ?crate7 ?depot0))
  (over all (position ?hoist0 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate7 ?depot0))))
)
(:durative-action lift_hoist0_crate7_depot0-2-2_depot0
:parameters (?hoist0 - hoist ?crate7 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?depot0-2-2))
  (at start (placed ?crate7 ?depot0))
  (over all (position ?hoist0 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate7 ?depot0))))
)
(:durative-action lift_hoist1_crate7_depot0-1-2_depot0
:parameters (?hoist1 - hoist ?crate7 - crate ?depot0-1-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?depot0-1-2))
  (at start (placed ?crate7 ?depot0))
  (over all (position ?hoist1 ?depot0-1-2))
  (over all (location ?depot0-1-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?depot0-1-2)))
  (at end (clear ?depot0-1-2))
  (at end (not (placed ?crate7 ?depot0))))
)
(:durative-action lift_hoist1_crate7_depot0-1-1_depot0
:parameters (?hoist1 - hoist ?crate7 - crate ?depot0-1-1 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?depot0-1-1))
  (at start (placed ?crate7 ?depot0))
  (over all (position ?hoist1 ?depot0-1-1))
  (over all (location ?depot0-1-1 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?depot0-1-1)))
  (at end (clear ?depot0-1-1))
  (at end (not (placed ?crate7 ?depot0))))
)
(:durative-action lift_hoist1_crate7_depot0-2-2_depot0
:parameters (?hoist1 - hoist ?crate7 - crate ?depot0-2-2 - section ?depot0 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?depot0-2-2))
  (at start (placed ?crate7 ?depot0))
  (over all (position ?hoist1 ?depot0-2-2))
  (over all (location ?depot0-2-2 ?depot0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?depot0-2-2)))
  (at end (clear ?depot0-2-2))
  (at end (not (placed ?crate7 ?depot0))))
)
(:durative-action lift_hoist0_crate7_depot1-1-1_depot1
:parameters (?hoist0 - hoist ?crate7 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?depot1-1-1))
  (at start (placed ?crate7 ?depot1))
  (over all (position ?hoist0 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate7 ?depot1))))
)
(:durative-action lift_hoist1_crate7_depot1-1-1_depot1
:parameters (?hoist1 - hoist ?crate7 - crate ?depot1-1-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?depot1-1-1))
  (at start (placed ?crate7 ?depot1))
  (over all (position ?hoist1 ?depot1-1-1))
  (over all (location ?depot1-1-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?depot1-1-1)))
  (at end (clear ?depot1-1-1))
  (at end (not (placed ?crate7 ?depot1))))
)
(:durative-action lift_hoist0_crate7_depot1-1-2_depot1
:parameters (?hoist0 - hoist ?crate7 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?depot1-1-2))
  (at start (placed ?crate7 ?depot1))
  (over all (position ?hoist0 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate7 ?depot1))))
)
(:durative-action lift_hoist0_crate7_depot1-2-1_depot1
:parameters (?hoist0 - hoist ?crate7 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?depot1-2-1))
  (at start (placed ?crate7 ?depot1))
  (over all (position ?hoist0 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate7 ?depot1))))
)
(:durative-action lift_hoist0_crate7_depot1-2-2_depot1
:parameters (?hoist0 - hoist ?crate7 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?depot1-2-2))
  (at start (placed ?crate7 ?depot1))
  (over all (position ?hoist0 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate7 ?depot1))))
)
(:durative-action lift_hoist1_crate7_depot1-1-2_depot1
:parameters (?hoist1 - hoist ?crate7 - crate ?depot1-1-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?depot1-1-2))
  (at start (placed ?crate7 ?depot1))
  (over all (position ?hoist1 ?depot1-1-2))
  (over all (location ?depot1-1-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?depot1-1-2)))
  (at end (clear ?depot1-1-2))
  (at end (not (placed ?crate7 ?depot1))))
)
(:durative-action lift_hoist1_crate7_depot1-2-1_depot1
:parameters (?hoist1 - hoist ?crate7 - crate ?depot1-2-1 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?depot1-2-1))
  (at start (placed ?crate7 ?depot1))
  (over all (position ?hoist1 ?depot1-2-1))
  (over all (location ?depot1-2-1 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?depot1-2-1)))
  (at end (clear ?depot1-2-1))
  (at end (not (placed ?crate7 ?depot1))))
)
(:durative-action lift_hoist1_crate7_depot1-2-2_depot1
:parameters (?hoist1 - hoist ?crate7 - crate ?depot1-2-2 - section ?depot1 - depot)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?depot1-2-2))
  (at start (placed ?crate7 ?depot1))
  (over all (position ?hoist1 ?depot1-2-2))
  (over all (location ?depot1-2-2 ?depot1)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?depot1-2-2)))
  (at end (clear ?depot1-2-2))
  (at end (not (placed ?crate7 ?depot1))))
)
(:durative-action lift_hoist0_crate7_container-0-0_container0
:parameters (?hoist0 - hoist ?crate7 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?container-0-0))
  (at start (placed ?crate7 ?container0))
  (over all (position ?hoist0 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate7 ?container0))))
)
(:durative-action lift_hoist1_crate7_container-0-0_container0
:parameters (?hoist1 - hoist ?crate7 - crate ?container-0-0 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?container-0-0))
  (at start (placed ?crate7 ?container0))
  (over all (position ?hoist1 ?container-0-0))
  (over all (location ?container-0-0 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?container-0-0)))
  (at end (clear ?container-0-0))
  (at end (not (placed ?crate7 ?container0))))
)
(:durative-action lift_hoist0_crate7_container-0-1_container0
:parameters (?hoist0 - hoist ?crate7 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?container-0-1))
  (at start (placed ?crate7 ?container0))
  (over all (position ?hoist0 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate7 ?container0))))
)
(:durative-action lift_hoist0_crate7_container-0-2_container0
:parameters (?hoist0 - hoist ?crate7 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?container-0-2))
  (at start (placed ?crate7 ?container0))
  (over all (position ?hoist0 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate7 ?container0))))
)
(:durative-action lift_hoist0_crate7_container-0-3_container0
:parameters (?hoist0 - hoist ?crate7 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist0))
  (at start (in ?crate7 ?container-0-3))
  (at start (placed ?crate7 ?container0))
  (over all (position ?hoist0 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist0)))
  (at start (lifting ?hoist0 ?crate7))
  (at end (not (in ?crate7 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate7 ?container0))))
)
(:durative-action lift_hoist1_crate7_container-0-1_container0
:parameters (?hoist1 - hoist ?crate7 - crate ?container-0-1 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?container-0-1))
  (at start (placed ?crate7 ?container0))
  (over all (position ?hoist1 ?container-0-1))
  (over all (location ?container-0-1 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?container-0-1)))
  (at end (clear ?container-0-1))
  (at end (not (placed ?crate7 ?container0))))
)
(:durative-action lift_hoist1_crate7_container-0-2_container0
:parameters (?hoist1 - hoist ?crate7 - crate ?container-0-2 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?container-0-2))
  (at start (placed ?crate7 ?container0))
  (over all (position ?hoist1 ?container-0-2))
  (over all (location ?container-0-2 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?container-0-2)))
  (at end (clear ?container-0-2))
  (at end (not (placed ?crate7 ?container0))))
)
(:durative-action lift_hoist1_crate7_container-0-3_container0
:parameters (?hoist1 - hoist ?crate7 - crate ?container-0-3 - section ?container0 - container)
:duration (= ?duration 2)
:condition (and 
  (at start (available ?hoist1))
  (at start (in ?crate7 ?container-0-3))
  (at start (placed ?crate7 ?container0))
  (over all (position ?hoist1 ?container-0-3))
  (over all (location ?container-0-3 ?container0)))
:effect (and 
  (at start (not (available ?hoist1)))
  (at start (lifting ?hoist1 ?crate7))
  (at end (not (in ?crate7 ?container-0-3)))
  (at end (clear ?container-0-3))
  (at end (not (placed ?crate7 ?container0))))
)
)
