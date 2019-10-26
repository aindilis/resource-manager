%% Work out the logic of the bills, use this to plan ahead to achieve
%% bill payments and such

%% today([2016-1-28]).
arg1Isa(today/1,date).

%% hasInventory(townhomeUpstairsFridge,ripItEnergyDrink,0).
arg1Isa(hasInventory/3,location).
arg2Isa(hasInventory/3,inventoryItem).
arg3Isa(hasInventory/3,integer).

%% has(timeToBuildConcentration,yesAndNo).
%% arg1Isa(has

%% hasInterruption('<REDACTED>''<REDACTED>',reactTo(getting(foodStamps))).
arg1Isa(hasInterruption/2,agent).
arg2Isa(hasInterruption/2,interruption).

%% numberOfDaysWhereReplete([2016-1-6],variable(0,1)).
arg1Isa(numberOfDaysWhereReplete/2,date).
arg2Isa(numberOfDaysWhereReplete/2,numberOfDaysAssertion).

%% hasInventory(cash,dollars(0)).
arg1Isa(hasInventory/2,inventoryType).
arg2Isa(hasInventory/2,inventoryQuantity).

%% hasInventory(paypal,dollars(0.51)).

%% hasService(internet,until([2016-2-12])).
arg1Isa(hasService/2,service).
arg2Isa(hasService/2,temporalStatement).

%% hasBillAmount(internet,dollars(122.50)).
arg1Isa(hasBillAmount/2,service).
arg2Isa(hasBillAmount/2,monetaryValue).

%% %% FIXME: calculate numberOfDaysOfServiceRemaining for internet from date.
%% numberOfDaysOfServiceRemaining(internet,[2016-1-7],3).
arg1Isa(numberOfDaysOfServiceRemaining/3,service).
arg2Isa(numberOfDaysOfServiceRemaining/3,date).
arg3Isa(numberOfDaysOfServiceRemaining/3,numberOfDaysAssertion).

%% hasService(electricity,noLaterThan(unknown(date))).
arg1Isa(hasService/2,service).
arg2Isa(hasService/2,dateRangeAssertion).

%% hasReliability(electricity,1.0).
arg1Isa(hasReliability/2,service).
arg2Isa(hasReliability/2,reliabilityEstimate).

%% hasCapability(airConditioning).
arg1Isa(hasCapability/1,capability).

%% dependsCapabilityOnService(airConditioning,electricity).
arg1Isa(dependsCapabilityOnService/2,capability).
arg2Isa(dependsCapabilityOnService/2,service).

%% neg(hasProperty('<REDACTED>''<REDACTED>',freeFromDistractions)).
arg1Isa(hasProperty/2,thing).
arg2Isa(hasProperty/2,property).

%% neg(hasDistraction('<REDACTED>''<REDACTED>',notTakingMeds)).
arg1Isa(hasDistraction/2,agent).
arg2Isa(hasDistraction/2,distraction).

%% hasDistraction('<REDACTED>''<REDACTED>',non24).

%% neg(hasSomethingForPersonToDo('<REDACTED>''<REDACTED>','<REDACTED>''<REDACTED>')).
arg1Isa(hasSomethingForPersonToDo/2,agent).
arg2Isa(hasSomethingForPersonToDo/2,person).

%% neg(hasSocialAnxiety('<REDACTED>''<REDACTED>')).

%% arg1Isa(hasSocialAnxiety/1,agent).

%% hasProperty('<REDACTED>''<REDACTED>',neg(sick)).
hasProperty('<REDACTED>''<REDACTED>',neg(tired)).
hasProperty('<REDACTED>''<REDACTED>',neg(languishing)).

%% arg1Isa(hasProperty/2,thing).
arg2Isa(hasProperty/2,property).

%% neg(hasCurrent(airFilter)).
arg1Isa(hasCurrent/1,renewableResource).

%% lastReplaced(airFilter,unknown(date)).
arg1Isa(lastReplaced/2,renewableResource).
arg2Isa(lastReplaced/2,temporalStatement).

%% hasCrisis('<REDACTED>''<REDACTED>',foodStampsRenewal).
arg1Isa(hasCrisis/2,agent).
arg2Isa(hasCrisis/2,crisis).

%% numberOfDaysOfServiceRemaining(foodStamps,0).

%% neg(hasCrisis('<REDACTED>''<REDACTED>',noFoodAtHome)).

%% soonWill(hasCrisis('<REDACTED>''<REDACTED>',noFoodAtHome)).
arg1Isa(soonWill/1,fluent).

%% desiresToWorkOn('<REDACTED>''<REDACTED>',planlogicFrdcsaOrg).
arg1Isa(desiresToWorkOn/2,agent).
arg2Isa(desiresToWorkOn/2,task).

%% hasClearConceptionOfWhatNeedsToBeWorkedOn('<REDACTED>''<REDACTED>').
arg1Isa(hasClearConceptionOfWhatNeedsToBeWorkedOn/1,agent).

%% hasService(water,until(unknown)).

%% hasService(water,noLaterThan([2016-2-7])).

%% neg(hasStressor('<REDACTED>''<REDACTED>',guilt)).
arg1Isa(hasStressor/2,agent).
arg2Isa(hasStressor/2,stressor).

%% feelingMotivated('<REDACTED>''<REDACTED>').
arg1Isa(feelingMotivated/1,agent).

%% neg(wantsToRecreateNow('<REDACTED>''<REDACTED>')).
arg1Isa(wantsToRecreateNow/1,agent).

%% houseHasFunction(disposal).
arg1Isa(houseHasFunction/1,domesticFunction).

%% neg(isMadAt('<REDACTED>''<REDACTED>','<REDACTED>''<REDACTED>',[2016-1-29],non24)).
arg1Isa(isMadAt/4,agent).
arg2Isa(isMadAt/4,agent).
arg3Isa(isMadAt/4,temporalAssertion).
arg4Isa(isMadAt/4,cause).

%% neg(hasPositionalWeakness(neg(hasCapability(mail)))).
arg1Isa(hasPositionalWeakness/1,assertion).

%% generate_resource_manager_display :-
%% 	today(Date1),
%% 	add_to_list(List,today(Date1)),

%% dependsCapabilityOnService(Capability,Service),
%% numberOfDaysOfServiceRemaining(Service,Days),

%% arg1Isa(isMadAt/4,agent).
arg1Isa(arg1Isa/2,predicateAndArity).
arg2Isa(arg1Isa/2,type).

%% arg2Isa(isMadAt/4,agent).
arg1Isa(arg2Isa/2,predicateAndArity).
arg2Isa(arg2Isa/2,type).

%% arg3Isa(isMadAt/4,agent).
arg1Isa(arg3Isa/2,predicateAndArity).
arg2Isa(arg3Isa/2,type).

%% arg4Isa(isMadAt/4,agent).
arg1Isa(arg4Isa/2,predicateAndArity).
arg2Isa(arg4Isa/2,type).

%% argIsa(isMadAt/4,1,agent).
arg1Isa(argIsa/3,predicateAndArity).
arg2Isa(argIsa/3,positiveInteger).
arg3Isa(argIsa/3,type).

%% task(billPaymentTask1,payBill(water,[[2016-01-03],[2016-02-03]]),not(hasService('<REDACTED>''<REDACTED>',water))).
arg1Isa(task/3,skolemConstant).
arg2Isa(task/3,fluent).
arg3Isa(task/3,collectionUnionFn(theSet(importance,effect))).

%% arg1Genls

display(resourceManager) :-
	display(inventoryManager),
	display(billPayment).

display(billPayment) :-
	findall([X,Y],argIsa(X,Y,service),Z),
	member(Pair,Z),
	displayPair(Pair,Term),
	fail.
display(billPayment).

display(billPayment2) :-
	setof(Service,TemporalExpression^hasService(Service,TemporalExpression),Services),
	%% view([services,Services]),
	member(Service,Services),
	displayService(Service),
	nl,nl,
	fail.
display(billPayment2).

%% setof(Z,X^Y^argIsa(X,Y,Z),A),view(A).

displayService(Service) :-
	view([service,Service]),nl,
	setof([X,Y],argIsa(X,Y,service),Z),
	member(Pair,Z),
	displayPair(Pair,Service),
	fail.
displayService(Service).

%% FIXME: Replace with one using =..

displayPair([Predicate/1,1],Term) :-
	Assertion =.. [Predicate|[Term]],
	findall(Assertion,Assertion,A),
	A \= [],
	view(A).

displayPair([Predicate/2,1],Term) :-
	Assertion =.. [Predicate|[Term,X]],
	findall(Assertion,Assertion,A),
	A \= [],
	view(A).

displayPair([Predicate/2,2],Term) :-
	Assertion =.. [Predicate|[X,Term]],
	findall(Assertion,Assertion,A),
	A \= [],
	view(A).

displayPair([Predicate/3,1],Term) :-
	Assertion =.. [Predicate|[Term,X,Y]],
	findall(Assertion,Assertion,A),
	A \= [],
	view(A).

displayPair([Predicate/3,2],Term) :-
	Assertion =.. [Predicate|[X,Term,Y]],
	findall(Assertion,Assertion,A),
	A \= [],
	view(A).

displayPair([Predicate/3,3],Term) :-
	Assertion =.. [Predicate|[X,Y,Term]],
	findall(Assertion,Assertion,A),
	A \= [],
	view(A).

displayPair([Predicate/4,1],Term) :-
	Assertion =.. [Predicate|[Term,X,Y,Z]],
	findall(Assertion,Assertion,A),
	A \= [],
	view(A).

displayPair([Predicate/4,2],Term) :-
	Assertion =.. [Predicate|[X,Term,Y,Z]],
	findall(Assertion,Assertion,A),
	A \= [],
	view(A).

displayPair([Predicate/4,3],Term) :-
	Assertion =.. [Predicate|[X,Y,Term,Z]],
	findall(Assertion,Assertion,A),
	A \= [],
	view(A).

displayPair([Predicate/4,4],Term) :-
	Assertion =.. [Predicate|[X,Y,Z,Term]],
	findall(Assertion,Assertion,A),
	A \= [],
	view(A).


%% [[hasService/2, 1], [hasBillAmount/2, 1],
%% [numberOfDaysOfServiceRemaining/3, 1], [hasService/2, 1],
%% [hasReliability/2, 1], [dependsCapabilityOnService/2, 2]]

%% service
%% 	hasServiceUntilDate numberOfDaysOfServiceRemaining
%% 	hasReliability
%%	dependsCapabilityOnService
%% 	bills
%% 		hasBillAmount isOverdue isMonthly
%%      

:- include('/var/lib/myfrdcsa/codebases/minor/resource-manager/bill_payment.pl').
:- prolog_include('/var/lib/myfrdcsa/codebases/minor/resource-manager/bill_payment.pl').
