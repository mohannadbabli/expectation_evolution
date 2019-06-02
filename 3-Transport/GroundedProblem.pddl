(define (problem transport-p01-10-city-5nodes-1000size-3degree-100mindistance-2trucks-2packagespercity-2008seed)
(:domain transport)
(:objects
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
(:init
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 22)
  (= (fuel-demand city-loc-3 city-loc-1) 43)
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 22)
  (= (fuel-demand city-loc-1 city-loc-3) 43)
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 50)
  (= (fuel-demand city-loc-3 city-loc-2) 99)
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 50)
  (= (fuel-demand city-loc-2 city-loc-3) 99)
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 26)
  (= (fuel-demand city-loc-4 city-loc-1) 52)
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 26)
  (= (fuel-demand city-loc-1 city-loc-4) 52)
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 45)
  (= (fuel-demand city-loc-4 city-loc-3) 89)
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 45)
  (= (fuel-demand city-loc-3 city-loc-4) 89)
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 37)
  (= (fuel-demand city-loc-5 city-loc-1) 74)
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 37)
  (= (fuel-demand city-loc-1 city-loc-5) 74)
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 12)
  (= (fuel-demand city-loc-5 city-loc-4) 24)
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 12)
  (= (fuel-demand city-loc-4 city-loc-5) 24)
  (at package-1 city-loc-3)
  (= (package-size package-1) 23)
  (at package-2 city-loc-4)
  (= (package-size package-2) 55)
  (has-petrol-station city-loc-1)
  (at truck-1 city-loc-3)
  (ready-loading truck-1)
  (= (capacity truck-1) 100)
  (= (fuel-left truck-1) 424)
  (= (fuel-max truck-1) 424)
  (at truck-2 city-loc-3)
  (ready-loading truck-2)
  (= (capacity truck-2) 100)
  (= (fuel-left truck-2) 424)
  (= (fuel-max truck-2) 424)
)
 (:goal (and
 ; (at package-1 city-loc-2)
 ; (at package-2 city-loc-3)
 ))

 	(:constraints 
		(and
			(at end(at package-2 city-loc-3))
		)
	)
(:metric minimize total-time)
)
