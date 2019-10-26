%% go ahead and predict upcoming bills.

projectFinances :-
	predict(bills,Predictions).

predict(bills,Predictions) :-
	analyzeRecords(bills,Results),
	calculateRanges(Results,Ranges),
	estimateDueDates(Results,DueDates),
	generatePredictions(Ranges,DueDates,Predictions).

analyzeRecords(bills,Results) :-
	%% setof([Company,Deadline,Amount],(paid(Person,billFn(Company,Deadline,Amount),PaidOn,ConfirmationNumber,PaymentDate),Paid = paid(Person,Bill,PaidOn,ConfirmationNumber,PaymentDate)),Paids),
	setof(Person,B^C^D^E^paid(Person,B,C,D,E),People),
	findall([Person,ServiceProviders],(member(Person,People),setof(ServiceProvider,X^Y^B^C^D^E^paid(Person,billFn(ServiceProvider,X,Y),C,D,E),ServiceProviders)),Couples),
	findall([Person,BillData],
		(
		 member([Person,ServiceProviders],Couples),
		 findall([ServiceProvider,BillDatum],
			 (
			  member(ServiceProvider,ServiceProviders),
			  setof([DueDate,Amount],B^C^D^E^paid(Person,billFn(ServiceProvider,DueDate,Amount),C,D,E),BillDatum)
			 ),
			 BillData)
		),
		Results),
	view([results,Results]).

%% try to estimate which bills are recurrences.  could use a
%% diagnostic or best fit for our difference recurrence models.  Take
%% into account that they might get moved around to another recurring
%% date, or not paid, etc.

calculateRanges(Results,Ranges) :-
	true.

estimateDueDates(Results,DueDates) :-
	true.

generatePredictions(Ranges,DueDates,Predictions) :-
	true.

%% add to flux

%% see()
%% /var/lib/myfrdcsa/codebases/minor/resource-manager/frdcsa/sys/flp/autoload/finances_shorthand.pl