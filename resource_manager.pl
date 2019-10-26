planForContingency(X) :-
	(hasPositionalWeakness(Y),
	 X = neg(inTime(completed(fix(Y))))) ;
	(desiresToWorkOn(X,Y) ;
	 X = neg(desiresToWorkOn(X,Y))),
	(not(feelingMotivated(Y)),
	 X = neg(feelingMotivated(Y))) ;
	(hasInventory(Item,Qty),
	 (X = hasInventory(Item,0) ;
	  (findall(Y,instanceOf(Y,Item),Result), member(Z,Result), (X = broken(Z) ; X = loses(Z))))).

planForContingency(neg(continuouslyMaintain('<REDACTED>''<REDACTED>',service(X)))) :-
	setof(Y,A^hasService(Y,A),Result),
	member(X,Result).

planForContingency(X) :-
	hasDistraction('<REDACTED>''<REDACTED>',Y),
	X = hasDistraction('<REDACTED>''<REDACTED>',Y).

:- prolog_consult('/var/lib/myfrdcsa/codebases/minor/resource-manager/classified.pl').
:- prolog_consult('/var/lib/myfrdcsa/codebases/minor/resource-manager/display.pl').
:- prolog_consult('/var/lib/myfrdcsa/codebases/minor/resource-manager/shopping_list.pl').
:- prolog_consult('/var/lib/myfrdcsa/codebases/minor/resource-manager/disposal_locations.pl').
:- prolog_consult('/var/lib/myfrdcsa/codebases/minor/resource-manager/productivity_requirements.pl').

instanceOf(jug1,jugs5Gallon).

hasDistraction('<REDACTED>',hasSomethingForPersonToDo(Person,'<REDACTED>')) :-
	hasSomethingForPersonToDo(Person,'<REDACTED>''<REDACTED>').

hasInventory(townhome,Item,Qty) :-
	hasInventory(Item,Qty).

listInventory(ResultList) :-
	setof([Name,Second],Second^Third^setof([Second2,Third2],hasInventory(Name,Second2,Third2),Second),ResultList).

listInventory(ResultList) :-
	setof([Name,Second],Second^Third^setof([Second2,Third2],hasInventory(Name,Second2,Third2),Second),ResultList).

addedInventoryToTotal(dining_room_closet,packOf(kleenexUltraSoftDouxTissue,qty(box,3)),1,[2016-04-09,15:13:17]).
addedInventoryToTotal(utility_room,packOf(kleenexUltraSoftDouxTissue,qty(box,3)),2,[2016-04-09,15:13:17]).
