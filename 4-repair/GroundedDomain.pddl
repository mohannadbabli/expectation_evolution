(define (domain repair-agency)
(:requirements :typing :durative-actions :timed-initial-literals :fluents :preferences :constraints)
(:types
  agent - object
  major_appliance - object
  location - object
  robot - agent
  television - major_appliance
  refrigerator - major_appliance
  dishwasher - major_appliance
  transit - location
  inspection - location
  storage - location
)
(:constants
  av - robot
  area_transit - transit
  area_inspect - inspection
  area_storage - storage
  washer_ID101 - dishwasher
  washer_ID02 - dishwasher
  refrigerator_ID03 - refrigerator
)
(:predicates
  (be ?locatable - (either robot major_appliance) ?loc - location)
  (active ?robot - robot)
  (moving ?robot - robot ?area1 - location ?area2 - location)
  (repaired ?item - major_appliance)
  (require_repair ?item - major_appliance)
  (loaded ?item - major_appliance ?robot - robot)
  (empty ?robot - robot)
)
(:functions
  (moving_time ?to - location ?from - location) - number
  (repair_time) - number
  (total_moving_time ?robot - robot) - number
  (load_unload_time) - number
)
(:durative-action move_av_area_storage_area_transit
:parameters (?av - robot ?area_storage - storage ?area_transit - transit)
:duration (= ?duration (moving_time ?area_storage ?area_transit))
:condition (and 
  (at start (be ?av ?area_storage))
  (at start (active ?av))
  (over all (active ?av))
  (at end (active ?av)))
:effect (and 
  (at start (not (be ?av ?area_storage)))
  (at start (moving ?av ?area_storage ?area_transit))
  (at end (be ?av ?area_transit))
  (at end (not (moving ?av ?area_storage ?area_transit)))
  (at end (increase (total_moving_time ?av) (moving_time ?area_storage ?area_transit))))
)
(:durative-action move_av_area_storage_area_inspect
:parameters (?av - robot ?area_storage - storage ?area_inspect - inspection)
:duration (= ?duration (moving_time ?area_storage ?area_inspect))
:condition (and 
  (at start (be ?av ?area_storage))
  (at start (active ?av))
  (over all (active ?av))
  (at end (active ?av)))
:effect (and 
  (at start (not (be ?av ?area_storage)))
  (at start (moving ?av ?area_storage ?area_inspect))
  (at end (be ?av ?area_inspect))
  (at end (not (moving ?av ?area_storage ?area_inspect)))
  (at end (increase (total_moving_time ?av) (moving_time ?area_storage ?area_inspect))))
)

(:durative-action move_av_area_transit_area_inspect
:parameters (?av - robot ?area_transit - transit ?area_inspect - inspection)
:duration (= ?duration (moving_time ?area_transit ?area_inspect))
:condition (and 
  (at start (be ?av ?area_transit))
  (at start (active ?av))
  (over all (active ?av))
  (at end (active ?av)))
:effect (and 
  (at start (not (be ?av ?area_transit)))
  (at start (moving ?av ?area_transit ?area_inspect))
  (at end (be ?av ?area_inspect))
  (at end (not (moving ?av ?area_transit ?area_inspect)))
  (at end (increase (total_moving_time ?av) (moving_time ?area_transit ?area_inspect))))
)
(:durative-action move_av_area_transit_area_storage
:parameters (?av - robot ?area_transit - transit ?area_storage - storage)
:duration (= ?duration (moving_time ?area_transit ?area_storage))
:condition (and 
  (at start (be ?av ?area_transit))
  (at start (active ?av))
  (over all (active ?av))
  (at end (active ?av)))
:effect (and 
  (at start (not (be ?av ?area_transit)))
  (at start (moving ?av ?area_transit ?area_storage))
  (at end (be ?av ?area_storage))
  (at end (not (moving ?av ?area_transit ?area_storage)))
  (at end (increase (total_moving_time ?av) (moving_time ?area_transit ?area_storage))))
)

(:durative-action load_av_washer_id02_area_transit
:parameters (?av - robot ?washer_id02 - dishwasher ?area_transit - transit)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_transit))
  (at start (be ?washer_id02 ?area_transit))
  (at start (active ?av))
  (at start (empty ?av))
  (over all (be ?av ?area_transit))
  (over all (active ?av))
  (over all (empty ?av))
  (at end (be ?av ?area_transit))
  (at end (active ?av)))
:effect (and 
  (at end (loaded ?washer_id02 ?av))
  (at end (not (be ?washer_id02 ?area_transit)))
  (at end (not (empty ?av))))
)


(:durative-action load_av_washer_id101_area_transit
:parameters (?av - robot ?washer_id101 - dishwasher ?area_transit - transit)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_transit))
  (at start (be ?washer_id101 ?area_transit))
  (at start (active ?av))
  (at start (empty ?av))
  (over all (be ?av ?area_transit))
  (over all (active ?av))
  (over all (empty ?av))
  (at end (be ?av ?area_transit))
  (at end (active ?av)))
:effect (and 
  (at end (loaded ?washer_id101 ?av))
  (at end (not (be ?washer_id101 ?area_transit)))
  (at end (not (empty ?av))))
)

(:durative-action load_av_refrigerator_id03_area_transit
:parameters (?av - robot ?refrigerator_id03 - refrigerator ?area_transit - transit)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_transit))
  (at start (be ?refrigerator_id03 ?area_transit))
  (at start (active ?av))
  (at start (empty ?av))
  (over all (be ?av ?area_transit))
  (over all (active ?av))
  (over all (empty ?av))
  (at end (be ?av ?area_transit))
  (at end (active ?av)))
:effect (and 
  (at end (loaded ?refrigerator_id03 ?av))
  (at end (not (be ?refrigerator_id03 ?area_transit)))
  (at end (not (empty ?av))))
)

(:durative-action move_av_area_inspect_area_transit
:parameters (?av - robot ?area_inspect - inspection ?area_transit - transit)
:duration (= ?duration (moving_time ?area_inspect ?area_transit))
:condition (and 
  (at start (be ?av ?area_inspect))
  (at start (active ?av))
  (over all (active ?av))
  (at end (active ?av)))
:effect (and 
  (at start (not (be ?av ?area_inspect)))
  (at start (moving ?av ?area_inspect ?area_transit))
  (at end (be ?av ?area_transit))
  (at end (not (moving ?av ?area_inspect ?area_transit)))
  (at end (increase (total_moving_time ?av) (moving_time ?area_inspect ?area_transit))))
)

(:durative-action move_av_area_inspect_area_storage
:parameters (?av - robot ?area_inspect - inspection ?area_storage - storage)
:duration (= ?duration (moving_time ?area_inspect ?area_storage))
:condition (and 
  (at start (be ?av ?area_inspect))
  (at start (active ?av))
  (over all (active ?av))
  (at end (active ?av)))
:effect (and 
  (at start (not (be ?av ?area_inspect)))
  (at start (moving ?av ?area_inspect ?area_storage))
  (at end (be ?av ?area_storage))
  (at end (not (moving ?av ?area_inspect ?area_storage)))
  (at end (increase (total_moving_time ?av) (moving_time ?area_inspect ?area_storage))))
)
(:durative-action unload_av_washer_id101_area_storage
:parameters (?av - robot ?washer_id101 - dishwasher ?area_storage - storage)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_storage))
  (at start (active ?av))
  (at start (loaded ?washer_id101 ?av))
  (over all (be ?av ?area_storage))
  (over all (active ?av))
  (at end (be ?av ?area_storage))
  (at end (active ?av)))
:effect (and 
  (at end (not (loaded ?washer_id101 ?av)))
  (at end (be ?washer_id101 ?area_storage))
  (at end (empty ?av)))
)
(:durative-action unload_av_washer_id101_area_transit
:parameters (?av - robot ?washer_id101 - dishwasher ?area_transit - transit)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_transit))
  (at start (active ?av))
  (at start (loaded ?washer_id101 ?av))
  (over all (be ?av ?area_transit))
  (over all (active ?av))
  (at end (be ?av ?area_transit))
  (at end (active ?av)))
:effect (and 
  (at end (not (loaded ?washer_id101 ?av)))
  (at end (be ?washer_id101 ?area_transit))
  (at end (empty ?av)))
)
(:durative-action unload_av_washer_id101_area_inspect
:parameters (?av - robot ?washer_id101 - dishwasher ?area_inspect - inspection)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_inspect))
  (at start (active ?av))
  (at start (loaded ?washer_id101 ?av))
  (over all (be ?av ?area_inspect))
  (over all (active ?av))
  (at end (be ?av ?area_inspect))
  (at end (active ?av)))
:effect (and 
  (at end (not (loaded ?washer_id101 ?av)))
  (at end (be ?washer_id101 ?area_inspect))
  (at end (empty ?av)))
)
(:durative-action unload_av_washer_id02_area_storage
:parameters (?av - robot ?washer_id02 - dishwasher ?area_storage - storage)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_storage))
  (at start (active ?av))
  (at start (loaded ?washer_id02 ?av))
  (over all (be ?av ?area_storage))
  (over all (active ?av))
  (at end (be ?av ?area_storage))
  (at end (active ?av)))
:effect (and 
  (at end (not (loaded ?washer_id02 ?av)))
  (at end (be ?washer_id02 ?area_storage))
  (at end (empty ?av)))
)
(:durative-action unload_av_washer_id02_area_transit
:parameters (?av - robot ?washer_id02 - dishwasher ?area_transit - transit)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_transit))
  (at start (active ?av))
  (at start (loaded ?washer_id02 ?av))
  (over all (be ?av ?area_transit))
  (over all (active ?av))
  (at end (be ?av ?area_transit))
  (at end (active ?av)))
:effect (and 
  (at end (not (loaded ?washer_id02 ?av)))
  (at end (be ?washer_id02 ?area_transit))
  (at end (empty ?av)))
)
(:durative-action unload_av_washer_id02_area_inspect
:parameters (?av - robot ?washer_id02 - dishwasher ?area_inspect - inspection)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_inspect))
  (at start (active ?av))
  (at start (loaded ?washer_id02 ?av))
  (over all (be ?av ?area_inspect))
  (over all (active ?av))
  (at end (be ?av ?area_inspect))
  (at end (active ?av)))
:effect (and 
  (at end (not (loaded ?washer_id02 ?av)))
  (at end (be ?washer_id02 ?area_inspect))
  (at end (empty ?av)))
)
(:durative-action unload_av_refrigerator_id03_area_storage
:parameters (?av - robot ?refrigerator_id03 - refrigerator ?area_storage - storage)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_storage))
  (at start (active ?av))
  (at start (loaded ?refrigerator_id03 ?av))
  (over all (be ?av ?area_storage))
  (over all (active ?av))
  (at end (be ?av ?area_storage))
  (at end (active ?av)))
:effect (and 
  (at end (not (loaded ?refrigerator_id03 ?av)))
  (at end (be ?refrigerator_id03 ?area_storage))
  (at end (empty ?av)))
)
(:durative-action unload_av_refrigerator_id03_area_transit
:parameters (?av - robot ?refrigerator_id03 - refrigerator ?area_transit - transit)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_transit))
  (at start (active ?av))
  (at start (loaded ?refrigerator_id03 ?av))
  (over all (be ?av ?area_transit))
  (over all (active ?av))
  (at end (be ?av ?area_transit))
  (at end (active ?av)))
:effect (and 
  (at end (not (loaded ?refrigerator_id03 ?av)))
  (at end (be ?refrigerator_id03 ?area_transit))
  (at end (empty ?av)))
)
(:durative-action unload_av_refrigerator_id03_area_inspect
:parameters (?av - robot ?refrigerator_id03 - refrigerator ?area_inspect - inspection)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_inspect))
  (at start (active ?av))
  (at start (loaded ?refrigerator_id03 ?av))
  (over all (be ?av ?area_inspect))
  (over all (active ?av))
  (at end (be ?av ?area_inspect))
  (at end (active ?av)))
:effect (and 
  (at end (not (loaded ?refrigerator_id03 ?av)))
  (at end (be ?refrigerator_id03 ?area_inspect))
  (at end (empty ?av)))
)

(:durative-action load_av_washer_id101_area_storage
:parameters (?av - robot ?washer_id101 - dishwasher ?area_storage - storage)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_storage))
  (at start (be ?washer_id101 ?area_storage))
  (at start (active ?av))
  (at start (empty ?av))
  (over all (be ?av ?area_storage))
  (over all (active ?av))
  (over all (empty ?av))
  (at end (be ?av ?area_storage))
  (at end (active ?av)))
:effect (and 
  (at end (loaded ?washer_id101 ?av))
  (at end (not (be ?washer_id101 ?area_storage)))
  (at end (not (empty ?av))))
)

(:durative-action repair_av_washer_id101_area_inspect
:parameters (?av - robot ?washer_id101 - dishwasher ?area_inspect - inspection)
:duration (= ?duration (repair_time))
:condition (and 
  (at start (be ?av ?area_inspect))
  (at start (be ?washer_id101 ?area_inspect))
  (at start (active ?av))
  (at start (require_repair ?washer_id101))
  (over all (be ?av ?area_inspect))
  (over all (be ?washer_id101 ?area_inspect))
  (over all (active ?av))
  (at end (be ?av ?area_inspect))
  (at end (be ?washer_id101 ?area_inspect))
  (at end (active ?av)))
:effect (and 
  (at end (not (require_repair ?washer_id101)))
  (at end (repaired ?washer_id101)))
)
(:durative-action load_av_washer_id101_area_inspect
:parameters (?av - robot ?washer_id101 - dishwasher ?area_inspect - inspection)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_inspect))
  (at start (be ?washer_id101 ?area_inspect))
  (at start (active ?av))
  (at start (empty ?av))
  (over all (be ?av ?area_inspect))
  (over all (active ?av))
  (over all (empty ?av))
  (at end (be ?av ?area_inspect))
  (at end (active ?av)))
:effect (and 
  (at end (loaded ?washer_id101 ?av))
  (at end (not (be ?washer_id101 ?area_inspect)))
  (at end (not (empty ?av))))
)
(:durative-action load_av_washer_id02_area_storage
:parameters (?av - robot ?washer_id02 - dishwasher ?area_storage - storage)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_storage))
  (at start (be ?washer_id02 ?area_storage))
  (at start (active ?av))
  (at start (empty ?av))
  (over all (be ?av ?area_storage))
  (over all (active ?av))
  (over all (empty ?av))
  (at end (be ?av ?area_storage))
  (at end (active ?av)))
:effect (and 
  (at end (loaded ?washer_id02 ?av))
  (at end (not (be ?washer_id02 ?area_storage)))
  (at end (not (empty ?av))))
)

(:durative-action repair_av_washer_id02_area_inspect
:parameters (?av - robot ?washer_id02 - dishwasher ?area_inspect - inspection)
:duration (= ?duration (repair_time))
:condition (and 
  (at start (be ?av ?area_inspect))
  (at start (be ?washer_id02 ?area_inspect))
  (at start (active ?av))
  (at start (require_repair ?washer_id02))
  (over all (be ?av ?area_inspect))
  (over all (be ?washer_id02 ?area_inspect))
  (over all (active ?av))
  (at end (be ?av ?area_inspect))
  (at end (be ?washer_id02 ?area_inspect))
  (at end (active ?av)))
:effect (and 
  (at end (not (require_repair ?washer_id02)))
  (at end (repaired ?washer_id02)))
)
(:durative-action load_av_washer_id02_area_inspect
:parameters (?av - robot ?washer_id02 - dishwasher ?area_inspect - inspection)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_inspect))
  (at start (be ?washer_id02 ?area_inspect))
  (at start (active ?av))
  (at start (empty ?av))
  (over all (be ?av ?area_inspect))
  (over all (active ?av))
  (over all (empty ?av))
  (at end (be ?av ?area_inspect))
  (at end (active ?av)))
:effect (and 
  (at end (loaded ?washer_id02 ?av))
  (at end (not (be ?washer_id02 ?area_inspect)))
  (at end (not (empty ?av))))
)
(:durative-action load_av_refrigerator_id03_area_storage
:parameters (?av - robot ?refrigerator_id03 - refrigerator ?area_storage - storage)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_storage))
  (at start (be ?refrigerator_id03 ?area_storage))
  (at start (active ?av))
  (at start (empty ?av))
  (over all (be ?av ?area_storage))
  (over all (active ?av))
  (over all (empty ?av))
  (at end (be ?av ?area_storage))
  (at end (active ?av)))
:effect (and 
  (at end (loaded ?refrigerator_id03 ?av))
  (at end (not (be ?refrigerator_id03 ?area_storage)))
  (at end (not (empty ?av))))
)

(:durative-action repair_av_refrigerator_id03_area_inspect
:parameters (?av - robot ?refrigerator_id03 - refrigerator ?area_inspect - inspection)
:duration (= ?duration (repair_time))
:condition (and 
  (at start (be ?av ?area_inspect))
  (at start (be ?refrigerator_id03 ?area_inspect))
  (at start (active ?av))
  (at start (require_repair ?refrigerator_id03))
  (over all (be ?av ?area_inspect))
  (over all (be ?refrigerator_id03 ?area_inspect))
  (over all (active ?av))
  (at end (be ?av ?area_inspect))
  (at end (be ?refrigerator_id03 ?area_inspect))
  (at end (active ?av)))
:effect (and 
  (at end (not (require_repair ?refrigerator_id03)))
  (at end (repaired ?refrigerator_id03)))
)
(:durative-action load_av_refrigerator_id03_area_inspect
:parameters (?av - robot ?refrigerator_id03 - refrigerator ?area_inspect - inspection)
:duration (= ?duration (load_unload_time))
:condition (and 
  (at start (be ?av ?area_inspect))
  (at start (be ?refrigerator_id03 ?area_inspect))
  (at start (active ?av))
  (at start (empty ?av))
  (over all (be ?av ?area_inspect))
  (over all (active ?av))
  (over all (empty ?av))
  (at end (be ?av ?area_inspect))
  (at end (active ?av)))
:effect (and 
  (at end (loaded ?refrigerator_id03 ?av))
  (at end (not (be ?refrigerator_id03 ?area_inspect)))
  (at end (not (empty ?av))))
)
)
