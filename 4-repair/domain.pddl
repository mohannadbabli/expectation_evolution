(define (domain repair-agency)

	(:requirements
		:typing
		:durative-actions
		:timed-initial-literals
		:fluents
		:preferences
		:constraints
	)
	
	(:types
		agent major_appliance location - object
		robot - agent
		television refrigerator dishwasher - major_appliance
		transit inspection storage - location
	)
	
	(:predicates
		
		;locatable is in ?loc
		(be ?locatable - (either robot major_appliance) ?loc - location)

		;controls robot active between a start and end hours.
		(active ?robot - robot)

		;indicates that a robot is moving between areas
		(moving ?robot - robot ?area1 - location ?area2 - location)

		; an item has been repaired by a roobot
		(repaired ?item - major_appliance)

		; an item required repairing
		(require_repair ?item - major_appliance)  

		; an item is loaded on a robot
		(loaded ?item - major_appliance ?robot - robot)
		(empty ?robot - robot)
	)
	
	(:functions
		;moving time between ?to and ?from 
		(moving_time ?to - location ?from - location)

		;repair time of an item
		(repair_time)

		;total movement time between areas of a robot
		(total_moving_time ?robot - robot)

		;loading and unloading time of items
		(load_unload_time)
	)
	
	(:durative-action move
		:parameters	(?robot - robot ?to - location ?from - location)
		:duration 	(= ?duration (moving_time ?to ?from))
		:condition	
			(and
				;(over all (be ?robot ?location))
				(at start (be ?robot ?to))

				;(over all (active ?robot))
				(at start (active ?robot))
				(over all (active ?robot))
				(at end   (active ?robot))
			)
		:effect	
			(and
				(at start (not (be ?robot ?to)))
				(at start (moving ?robot ?to ?from))
				(at end (be ?robot ?from))
				(at end (increase (total_moving_time ?robot) (moving_time ?to ?from) ))
				(at end (not (moving ?robot ?to ?from)))
			)
	)
	
	(:durative-action repair
		:parameters (?robot - robot ?item - major_appliance ?inspection_area - inspection)
		:duration (= ?duration (repair_time))
		:condition
			(and
				;(over all (be ?robot ?location))
				(at start (be ?robot ?inspection_area))
				(over all (be ?robot ?inspection_area))
				(at end   (be ?robot ?inspection_area))

				;(over all (be ?item ?location))
				(at start (be ?item ?inspection_area))
				(over all (be ?item ?inspection_area))
				(at end   (be ?item ?inspection_area))

				;(over all (active ?robot))
				(at start (active ?robot))
				(over all (active ?robot))
				(at end   (active ?robot))

				(at start (require_repair ?item))
			)
		:effect
			(and
				(at end (not (require_repair ?item)))
				(at end (repaired ?item))
			)
	)

		(:durative-action load
		:parameters (?robot - robot ?item - major_appliance ?location - location)
		:duration (= ?duration (load_unload_time))
		:condition
			(and
				;(over all (be ?robot ?location))
				(at start (be ?robot ?location))
				(over all (be ?robot ?location))
				(at end   (be ?robot ?location))

				(at start (be ?item ?location))

				;(over all (active ?robot))
				(at start (active ?robot))
				(over all (active ?robot))
				(at end   (active ?robot))

				(at start (empty ?robot))
				(over all (empty ?robot))
			)
		:effect
			(and 
				(at end (loaded ?item ?robot))
				(at end (not (be ?item ?location)))
				(at end (not (empty ?robot)))
			)
	)

	(:durative-action unload
		:parameters (?robot - robot ?item - major_appliance ?location - location)
		:duration (= ?duration (load_unload_time))
		:condition
			(and
				;(over all (be ?robot ?location))
				(at start (be ?robot ?location))
				(over all (be ?robot ?location))
				(at end   (be ?robot ?location))

				;(over all (active ?robot))
				(at start (active ?robot))
				(over all (active ?robot))
				(at end   (active ?robot))

				(at start (loaded ?item ?robot))
			)
		:effect
			(and
				(at end (not (loaded ?item ?robot)))
				(at end (be ?item ?location))
				(at end (empty ?robot))
			)
	)		
)
