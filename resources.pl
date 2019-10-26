(integrate resource manager with "Utility Maximization System")

(Keep track of our supplies and when they are going to run out,
 for all consumables, including things like electricity etc.  Also
 estimate their reliability.)

(related somewhat to the pgourmet system - should use Inform7 to
 populate the ontology of things we have, that is, once we have
 persistence working)

(integrate with the temporal planner)

(integrate with logicmoo)

("=" ("has-level" "Pop" "2 liters") "2")
("=" ("has-level" "Pop" "16 oz cans" "0"))

("=" ("days-until-expected-to-run-out" "Pop") "0")

;; ("has-level" "Food" "0")

;; (I need time to build concentration.)
("number-of-moves-in-a-row-where-all-supplies-available" "0")

("has-level" "Money" "$3")

("has-service" "Comcast Internet")
("days-until-expected-change-of-state" "Comcast Internet Access" "-3")

(the bills must be paid
 (electricity)
 (internet)
 )

(the upcoming bills must be taken into consideration
 ()
 )

("has-capability" "Electrical Power" "true")
("days-until-expected-change-of-state" "Electrical Power" "?")

("has-capability" "Proper Air Temperature" "true")
;; add something here for expected change of state

("has-capability" "Working Bathroom" "true")

;; add something here to say that as long as rent is payed we expect to have a working bathroom
("days-until-expected-change-of-state" "Working Bathroom Power" "?")

(I need my computers to be working
 )

(I need my work set up)

(I need to be free from distractions
 (no one has anything for me to do for them)
 (need to not have any social anxieties)
 )

(I need to be physically okay
 (I need to be not sick)
 (I need to be not tired)
 (I need to not feel languishing)
 )

(All air filters properly set up
 (I installed the furnace filter on Thu Oct 23 12:07:36 CDT 2014)
 )

(I need not have some crisis hanging over me that preys on my
 mind)

(I need to have a clear conception of what I need to work on and
 why)

(I need to have water available)

(need to be healthy)

(not have any stressors)

(I must have the Geist/motivation)

(the phone on the charger)

(want
 (nothing wrong with the house
  (all things like disposal, lights, etc working properly)
  )
 )

