(define (problem problem1)
(:domain repair-agency)
(:objects
  av - robot
  area_transit - transit
  area_inspect - inspection
  area_storage - storage
  washer_id101 - television
  washer_id02 - television
  refrigerator_id03 - refrigerator
)
(:init
  (be av area_storage)
  (empty av)
  (active av)
  (at 730 (not (active av)))
  (= (moving_time area_storage area_inspect) 5)
  (= (moving_time area_storage area_transit) 5)
  (= (moving_time area_inspect area_transit) 5)
  (= (moving_time area_inspect area_storage) 5)
  (= (moving_time area_transit area_storage) 5)
  (= (moving_time area_transit area_inspect) 5)
  (= (repair_time) 80)
  (= (load_unload_time) 1)
  (be washer_id101 area_transit)
  (be washer_id02 area_transit)
  (be refrigerator_id03 area_transit)

  (= (total_moving_time av) 0)
  (require_repair washer_id101)
  (require_repair washer_id02)
  (require_repair refrigerator_id03)
)
	(:goal 
		(and 
		)
	)
	
	(:constraints 
		(and
			;(at end(be av area_storage))
			;(at end(repaired washer_ID101))
			(at end(repaired washer_ID02))
			;(at end(repaired refrigerator_ID03))
			;(at end(be washer_ID101 area_storage))
			(at end(be washer_ID02 area_storage))
			;(at end(be refrigerator_ID03 area_storage))
		)
	)

	(:metric minimize 
		(+
		(total_moving_time av)
		(total-time)
		)
	)
)
