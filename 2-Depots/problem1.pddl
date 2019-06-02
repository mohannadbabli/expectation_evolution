(define (problem depotprob1818) (:domain Depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate1)
	(at pallet1 distributor0)
	(clear crate0)
	(at pallet2 distributor1)
	(clear pallet2)
	(at truck0 distributor1)
	(= (speed truck0) 4)
	(at truck1 depot0)
	(= (speed truck1) 8)
	(at hoist0 depot0)
	(available hoist0)
	(= (power hoist0) 2)
	(at hoist1 distributor0)
	(available hoist1)
	(= (power hoist1) 9)
	(at hoist2 distributor1)
	(available hoist2)
	(= (power hoist2) 6)
	(at crate0 distributor0)
	(on crate0 pallet1)
	(= (weight crate0) 11)
	(at crate1 depot0)
	(on crate1 pallet0)
	(= (weight crate1) 86)
	(= (distance depot0 depot0) 0)
	(= (distance depot0 distributor0) 50)
	(= (distance depot0 distributor1) 70)
	(= (distance distributor0 depot0) 50)
	(= (distance distributor0 distributor0) 0)
	(= (distance distributor0 distributor1) 50)
	(= (distance distributor1 depot0) 40)
	(= (distance distributor1 distributor0) 40)
	(= (distance distributor1 distributor1) 0)

    ; (= (speed truck0) 4) (= (speed truck1) 8)
	(= (duration-driving truck0 depot0 distributor0) 12)
	(= (duration-driving truck0 distributor0 depot0) 12)
	(= (duration-driving truck0 depot0 distributor1) 17)
	(= (duration-driving truck0 distributor1 depot0) 10)
	(= (duration-driving truck0 distributor0 distributor1) 12)
	(= (duration-driving truck0 distributor1 distributor0) 10)
;;
	(= (duration-driving truck1 depot0 distributor0) 6)
	(= (duration-driving truck1 distributor0 depot0) 6)
	(= (duration-driving truck1 depot0 distributor1) 8)
	(= (duration-driving truck1 distributor1 depot0) 5)
	(= (duration-driving truck1 distributor0 distributor1) 6)
	(= (duration-driving truck1 distributor1 distributor0) 5)

;;	(= (weight crate0) 11) (= (weight crate1) 86)
;;	(= (power hoist0) 2) (= (power hoist1) 9) (= (power hoist2) 6)
	(= (duration-load-unload hoist0 crate0) 5)
	(= (duration-load-unload hoist0 crate1) 43)

	(= (duration-load-unload hoist1 crate0) 1)
	(= (duration-load-unload hoist1 crate1) 9)

	(= (duration-load-unload hoist2 crate0) 2)
	(= (duration-load-unload hoist2 crate1) 14)
	;;
	(= (duration-lift-drop) 1)
)

(:goal (and
		;(on crate0 pallet2)
		;(on crate1 pallet1)
	)
)

	(:constraints 
		(and
			(at end(on crate0 pallet2))
			;(at end(on crate1 pallet1))
		)
	)

(:metric minimize (total-time)))
