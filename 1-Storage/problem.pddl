(define (problem storage-1)
(:domain Storage-Time)
(:objects
	depot0-1-1 depot0-1-2 depot0-2-1 depot0-2-2 depot1-1-1 depot1-1-2 depot1-2-1 depot1-2-2 container-0-0 container-0-1 container-0-2 container-0-3 container-1-0 container-1-1 container-1-2 container-1-3 - section
	hoist0 hoist1 - hoist
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 - crate
	container0 container1 - container
	depot0 depot1 - depot
	terminal1 terminal0 - terminal)

(:init
	(location depot0-1-1 depot0)
	(location depot0-1-2 depot0)
	(location depot0-2-1 depot0)
	(location depot0-2-2 depot0)
	(location depot1-1-1 depot1)
	(location depot1-1-2 depot1)
	(location depot1-2-1 depot1)
	(location depot1-2-2 depot1)

	(inner-link depot0-1-1 depot0-2-1)
	(inner-link depot0-2-1 depot0-1-1)

	(inner-link depot0-1-1 depot0-1-2)
	(inner-link depot0-1-2 depot0-1-1)

	(inner-link depot0-1-2 depot0-2-2)
	(inner-link depot0-2-2 depot0-1-2)
	
	(inner-link depot0-2-1 depot0-2-2)
	(inner-link depot0-2-2 depot0-2-1)
	
	(inner-link depot1-1-1 depot1-2-1)
	(inner-link depot1-2-1 depot1-1-1)

	(inner-link depot1-1-1 depot1-1-2)
	(inner-link depot1-1-2 depot1-1-1)

	(inner-link depot1-1-2 depot1-2-2)
	(inner-link depot1-2-2 depot1-1-2)
	
	(inner-link depot1-2-1 depot1-2-2)
	(inner-link depot1-2-2 depot1-2-1)

	(outer-link depot0 terminal0)
	(outer-link terminal0 depot0)

	(outer-link depot1 terminal0)
	(outer-link terminal0 depot1)

	;(outer-link depot0 terminal1)
	;(outer-link terminal1 depot0)

	(outer-link depot1 terminal1)
	(outer-link terminal1 depot1)


	(at container0 terminal0)
	(at container1 terminal1)

	(in crate0 container-0-0)
	(in crate1 container-0-1)
	(in crate2 container-0-2)
	(in crate3 container-0-3)

	(placed crate0 container0)
	(placed crate1 container0)
	(placed crate2 container0)
	(placed crate3 container0)

	(in crate4 container-1-0)
	(in crate5 container-1-1)
	(in crate6 container-1-2)
	(in crate7 container-1-3)

	(placed crate4 container1)
	(placed crate5 container1)
	(placed crate6 container1)
	(placed crate7 container1)

	(location container-0-0 container0)
	(location container-0-1 container0)
	(location container-0-2 container0)
	(location container-0-3 container0)

	(location container-1-0 container1)
	(location container-1-1 container1)
	(location container-1-2 container1)
	(location container-1-3 container1)

	(inner-link container-0-0 container-0-1)
	(inner-link container-0-1 container-0-0)

	(inner-link container-0-0 container-0-2)
	(inner-link container-0-2 container-0-0)

	(inner-link container-0-1 container-0-3)
	(inner-link container-0-3 container-0-1)

	(inner-link container-0-2 container-0-3)
	(inner-link container-0-3 container-0-2)

	(inner-link container-1-0 container-1-1)
	(inner-link container-1-1 container-1-0)

	(inner-link container-1-0 container-1-2)
	(inner-link container-1-2 container-1-0)

	(inner-link container-1-1 container-1-3)
	(inner-link container-1-3 container-1-1)

	(inner-link container-1-2 container-1-3)
	(inner-link container-1-3 container-1-2)
 
	(clear depot0-2-1)
	(clear depot0-1-2)
	(clear depot1-1-1)
	(clear depot1-1-2)
	(clear depot1-2-1)
	(clear depot1-2-2) 

	(clear depot0-1-1)
	(clear depot0-2-2)

	(position hoist0 depot0-2-2)
	(available hoist0)
	(position hoist1 depot0-1-1)
	(available hoist1))

(:goal 
	(and
;	(position hoist0 container-1-3)
	)
)

;(:goal (and
;	(placed crate0 depot0)
;	(placed crate1 depot0)
;	(placed crate2 depot0)
;	(placed crate3 depot0)
;	(placed crate4 depot1)
;	(placed crate5 depot1)
;	(placed crate6 depot1)
;	(placed crate7 depot1))
;)

	(:constraints 
		(and
			(at end(placed crate1 depot0))
		)
	)

(:metric minimize (total-time))
)
