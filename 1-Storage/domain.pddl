(define (domain Storage-Time)
	(:requirements :typing :durative-actions :constraints :preferences)
	(:types
		item agent storage - object
		crate - item
		lifting_device  - agent
		hoist - lifting_device
		storage_place section terminal - storage
		depot container - storage_place
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

	(:durative-action lift
 		:parameters (?x - lifting_device ?y - item ?z - section ?z1 - storage_place)
 		:duration (= ?duration 2)
 		:condition (and 
 			(at start (available ?x)) 
 			(at start (in ?y ?z))
 			(at start (placed ?y ?z1))
 			(over all (position ?x ?z))
 			(over all (location ?z ?z1)))
 		:effect (and 
 			(at start (not (available ?x)))
 			(at start (lifting ?x ?y)) 
 			(at end (not (in ?y ?z)))
 			(at end (clear ?z))
 			(at end (not (placed ?y ?z1))))
 	)
 	(:durative-action drop
		:parameters (?x - lifting_device ?y - item ?z - section ?z1 - storage_place)
		:duration (= ?duration 2)
		:condition (and 
			(at start (clear ?z)) 
			(at start (lifting ?x ?y))
			(over all (position ?x ?z))
			(over all (location ?z ?z1)))
		:effect (and 
			(at end (not (clear ?z))) 
			(at end (not (lifting ?x ?y)))
			(at end (available ?x))
			(at end (in ?y ?z))
			(at end (placed ?y ?z1)))
	)

	(:durative-action move
		:parameters (?x - lifting_device ?y - section ?z - section)
		:duration (= ?duration 1)
		:condition (and 
			(at start (position ?x ?y)) 
			(over all (inner-link ?y ?z)))
		:effect (and 
			(at start (not (position ?x ?y))) 		
			(at end (position ?x ?z)))
	)

	(:durative-action go-out
		:parameters (?x - lifting_device ?y1 - section ?z1 - depot ?y2 - section ?z3 - container ?z2 - terminal)
		:duration (= ?duration 1)
		:condition (and 
			(at start (position ?x ?y1))
			(over all (location ?y1 ?z1))
			(over all (location ?y2 ?z3))
			(over all (at ?z3 ?z2))
			(over all (outer-link ?z1 ?z2)))
		:effect (and
			(at start (not (position ?x ?y1))) 
			(at end (position ?x ?y2)))
	)

	(:durative-action go-in
		:parameters (?x - lifting_device ?y1 - section ?z2 - container ?z1 - terminal ?y2 - section ?z3 - depot)
		:duration (= ?duration 1)
		:condition (and 
			(at start (position ?x ?y1))
			(over all (location ?y1 ?z2))
			(over all (at ?z2 ?z1))
			(over all (location ?y2 ?z3))
			(over all (outer-link ?z1 ?z3)))
		:effect (and
			(at start (not (position ?x ?y1))) 
			(at end (position ?x ?y2)))
	)			
)