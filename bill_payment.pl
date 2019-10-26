:- multifile genls/2.

:- consult('/var/lib/myfrdcsa/codebases/minor/resource-manager/bill_payment_metadata.pl').
:- consult('/var/lib/myfrdcsa/codebases/minor/resource-manager/bill_payment_data.pl').

%% (dateRangeOfExpectedBillArrival)
%% (dateRangeOfExpectedBillPayment)

% responsibleFor(Someone,paying(Someone,Person,Bill)):-
% 	hasService(Person,Service),
% 	not(comped(Person,Service)),
% 	bill(Bill,Service,Amount,Period,DueDate).

hasBill(Person,Bill) :-
	hasPossessionOf(Person,Vehicle),
	hasType(Vehicle, vehicle).

vehiclePayment(Person,Bill,Vehicle) :-
	hasPossessionOf(Person,Vehicle),
	hasType(Vehicle, vehicle).

bill(X) :-
	bills(Y),
	member(X,Y).

% list the rest of my bills

% when do you find out how much the next bills are
% at bill opening or sc'<REDACTED>'ing time!

% assume for now the the list of upcoming bills, amounts and due dates
% are automatically kept up to date.

listUpcomingBills :-
	true.

markBillAsSubmitted :-
	true.

markBillAsPaid :-
	true.

%% pendingBill(Bill)

% add logic for the effects of not paying bills

temp:-
	overdue(Bill),
	serviceDisconnectionDateForFailureToPay(Bill,[Y-M-D]).

recommends(oldSecond,'We recommend that you allow 10 business days for check payments and 3 business days for electronic payments to be processed by the payee').
recommends(oldSecond,'Your payments are not entered until you complete the confirmation step and receive a confirmation number.').

hasAvailableBalance([2016-12-28],'<REDACTED>''<REDACTED>',checkAccount,dollars(1649.50)).
hasAvailableBalance([2016-12-28],'<REDACTED>',creditCard,dollars(92.56)).

after(successfulOnlineBillPayment,recordABigOAndTheDateAndConfirmationNumbers).
after(successfulOnlineBillPayment,saveThePaymentForm).
before(submittingOnlineBillPayment,doubleCheckAmountsOnActualBills).

%% set up a possible recurrence here

abduce(billDueDate(Bill,[YYYY2-MM2-DD2])) :-
	billDueDate(Bill,[YYYY-MM-DD]),
	sameDayOfMonthNextMonth([YYYY-MM-DD],[YYYY2-MM2-DD2]).

%% procedure(depositCashIntoChaseAccount(Account)) :-
%% 	getMoneyOrder(MoneyOrderPlace,Amount,MoneyOrder),
%% 	depositMoneyOrderIntoChase(MoneyOrder,Chase,Account).

%% procedure(depositMoneyOrderIntoChase(MoneyOrder,'<REDACTED>',Account)) :-
%% 	stampThumbOnto(Depositor,MoneyOrder).


%% procedure(depositCashIntoOldSecondAccount(Account)) :-
%%	hasIssuingBank(Check,oldSecondBank) -> rightAway ; nextDay.

requiresPinNumberForUseAsCredit('<REDACTED>').

generatePageFor(bill_payment,User,Results) :-
	getUpcomingBills(Results).

makeGloss([Y-M-D,H:Mi:S],Gloss) :-
	generateGlossFor([Y-M-D,H:Mi:S],Gloss).
makeGloss(dollars(Float),Gloss) :-
	atom_concat('$',Float,Gloss).
makeGloss(Item,Gloss) :-
	not(Item = [_-_-_,_:_:_]),
	not(Item = dollars(_)),
	getGloss(Item,Gloss).
	
getUpcomingBills([paidBills,PaidBills,submittedBills,SubmittedBills,overdueBills,OverDueBills,confirmedUpcomingBills,ConfirmedUpcomingBills,expectedUpcomingBills,ExpectedUpcomingBills,predictedUpcomingBills,PredictedUpcomingBills]) :-
	DueDate = [Y-M-D],
	DueDateTime = [Y-M-D,17:0:0],
	findall([hasBill,hasBill(Agent,Supplier,Amount,dueBy(DueDate)),descriptionGloss,DescriptionGloss,agentGloss,AgentGloss,supplierGloss,SupplierGloss,amountGloss,AmountGloss,dueDateTimeGloss,DueDateTimeGloss,dueDate,DueDate],
		(   
		    hasBill(Agent,Supplier,Amount,dueBy(DueDate)),
		    makeGloss(Agent,AgentGloss),
		    makeGloss(Supplier,SupplierGloss),
		    makeGloss(Amount,AmountGloss),
		    makeGloss(DueDateTime,DueDateTimeGloss),
		    view([agentGloss,AgentGloss,supplierGloss,SupplierGloss,amountGloss,AmountGloss,dueDateTimeGloss,DueDateTimeGloss]),
		    atomic_list_concat([AgentGloss,has,bill,from,SupplierGloss,for,AmountGloss,due,on,DueDateTimeGloss],' ',DescriptionGloss)
		),
		Bills),
	view(1),
	predsort(compareBillDates,Bills,SortedBills),
	view(2),
	getBillType(SortedBills,paid,PaidBills),
	getBillType(SortedBills,submitted,SubmittedBills),
	getBillType(SortedBills,overdue,OverDueBills),
	view(3),
	getBillType(SortedBills,confirmedUpcoming,ConfirmedUpcomingBills),
	getBillType(SortedBills,expectedUpcoming,ExpectedUpcomingBills),
	getBillType(SortedBills,predictedUpcoming,PredictedUpcomingBills).

compareBillDates(<,A,B) :-
	argl(A,dueDate,DueDateA),
	argl(B,dueDate,DueDateB),
	julian:compare_time(<,DueDateA,DueDateB).
compareBillDates(>,A,B) :-
	argl(A,dueDate,DueDateA),
	argl(B,dueDate,DueDateB),
	julian:compare_time(>,DueDateA,DueDateB).
compareBillDates(=,A,B) :-
	argl(A,dueDate,DueDateA),
	argl(B,dueDate,DueDateB),
	julian:compare_time(=,DueDateA,DueDateB).

onlinePaymentMethodForSuppliers(['<REDACTED>','<REDACTED>','<REDACTED>'],oldSecondBancorpIncCheckingAccountOnlineBankingPaymentMethod).
onlinePaymentMethodForSuppliers(['<REDACTED>'],unknownFn(paymentMethod)).
onlinePaymentMethodForSuppliers(['<REDACTED>'],unknownFn(paymentMethod)).

verifyBillPaid(hasBill(Agent,Supplier,Amount,dueBy(DueDate))) :-
	paid(Agent,billFn(Supplier,DueDate,for(Amount)),paidOn(PaidDate),confirmationNumber(ConfirmationNumber),paymentDate(PaymentDate)),
	HasBill = hasBill(Agent,Supplier,Amount,dueBy(DueDate)).

isBillOverdue(hasBill(Agent,Supplier,Amount,dueBy(DueDate))) :-
	getCurrentDate(CurrentDate),
	ulian:compare_time(<,DueDate,CurrentDate).

getBillType(SortedBills,paid,BillsOfTypeBillType) :-
	findall(Bill,
		(
		 member(Bill,SortedBills),
		 argl(Bill,hasBill,HasBill),
		 verifyBillPaid(HasBill)
		),
		BillsOfTypeBillType).

getBillType(SortedBills,submitted,BillsOfTypeBillType) :-
	findall(Bill,
		(
		 member(Bill,SortedBills),
		 argl(Bill,hasBill,HasBill),
		 verifyBillPaid(HasBill)
		),
		BillsOfTypeBillType).

getBillType(SortedBills,overdue,BillsOfTypeBillType) :-
	findall(Bill,
		(
		 member(Bill,SortedBills),
		 argl(Bill,hasBill,HasBill),
		 view([hasBill,HasBill]),
		 not(verifyBillPaid(HasBill)),
		 isBillOverdue(HasBill)
		),
		BillsOfTypeBillType).
	
getBillType(SortedBills,confirmedUpcoming,BillsOfTypeBillType) :-
	findall(Bill,
		(
		 member(Bill,SortedBills),
		 argl(Bill,hasBill,HasBill),
		 not(verifyBillPaid(HasBill)),
		 not(isBillOverdue(HasBill))
		),
		BillsOfTypeBillType).

getBillType(SortedBills,expectedUpcoming,BillsOfTypeBillType) :-
	BillsOfTypeBillType = [].
	%% findall(Bill,
	%% 	(
	%% 	 member(Bill,SortedBills),
	%% 	 argl(Bill,hasBill,HasBill),
	%% 	 not(verifyBillPaid(HasBill)),
	%% 	 not(isBillOverdue(HasBill))
	%% 	),
	%% 	BillsOfTypeBillType).

getBillType(SortedBills,predictedUpcoming,BillsOfTypeBillType) :-
	BillsOfTypeBillType = [].
	%% findall(Bill,
	%% 	(
	%% 	 member(Bill,SortedBills),
	%% 	 argl(Bill,hasBill,HasBill),
	%% 	 not(verifyBillPaid(HasBill)),
	%% 	 not(isBillOverdue(HasBill))
	%% 	),
	%% 	BillsOfTypeBillType).
