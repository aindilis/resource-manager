hasType(water1, billForServiceFn(water)).

genls(rent,shelterExpense).
genls(mortgage,shelterExpense).
genls(shelterExpense,bill).

bills([rent,mortgage,electricity,gas,water,sewer,trashPickup,carPayment,carInsurance,apartmentInsurance,carMaintenance,carGas,cable,cellPhone,grocery,creditCardPayment]).

%% bills([rent,mortgage,electricity,gas,water,sewer,trashPickup,carPayment,carInsurance,apartmentInsurance,carMaintenance,carGas,cable,cellPhone,grocery,creditCardPayment]).


hasUtilitySupplier(rent,'<REDACTED>').

hasUtilitySupplier(electricity,'<REDACTED>').


hasUtilitySupplier(gas,'<REDACTED>').


hasUtilitySupplier(sanitary,'<REDACTED>').

hasPhoneNumber('<REDACTED>',phoneNumberFn('<REDACTED>')).


hasUtilitySupplier(water,'<REDACTED>').

hasPhoneNumber(locationFn('<REDACTED>',addressFn('<REDACTED>','<REDACTED>','<REDACTED>','<REDACTED>')),phoneNumberFn('<REDACTED>')).
hasEmail(locationFn('<REDACTED>',addressFn('<REDACTED>','<REDACTED>','<REDACTED>','<REDACTED>')),'<REDACTED>').
hasPhoneNumber(locationFn('<REDACTED>',addressFn('<REDACTED>','<REDACTED>','<REDACTED>','<REDACTED>')),phoneNumberFn('<REDACTED>')).


%% hasUtilitySupplier(sewer,?).
%% hasUtilitySupplier(trashPickup,?).

hasExtractors(coversTimePeriod(Agent,'<REDACTED>',dollars(Dollars),[DateFrom,DateTo]),
	      [
	       'Total Amount Due <Dollars:dollarAmount>',
	       'CHARGE DETAILS\nResidentail - Multiple <DateFrom:date> - <DateTo:date> (<Days:nonNegativeInteger> Days)'
	      ]).
hasExtractors(hasBill(Agent,'<REDACTED>',dollars(Dollars),dueBy(DueDate)),
	      [
	       'Total Amount Due by <DueDate:date>',
	       'Total Amount Due <Dollars:dollarAmount>'
	      ]).
hasExtractors(billIssued('<REDACTED>','<REDACTED>',dollars(Dollars),DateIssued),
	      [
	       'Total Amount Due by <DueDate:date>'
	      ]).

hasExtractors(coversTimePeriod(Agent,'<REDACTED>',dollars(Dollars),[DateFrom,DateTo]),
	      [
	       'MINIMUM PAYMENT <Dollars:dollarAmount>',
	       '<DateFrom:date> - <DateTo:date> (<Days:nonNegativeInteger> Days in Billing Cycle'
	      ]).
hasExtractors(hasBill(Agent,'<REDACTED>',dollars(Dollars),dueBy(DueDate)),
	      [
	       'DUE DATE <DueDate:date>',
	       'MINIMUM PAYMENT <Dollars:dollarAmount>'
	      ]).
hasExtractors(billIssued('<REDACTED>','<REDACTED>',dollars(Dollars),DateIssued),
	      [
	       'Total Amount Due <Dollars:dollarAmount>'
	      ]).

%% task(X) :-
%% 	completed(X).

