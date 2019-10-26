consumable(pepsi).

hasType(iPepsi1,opened(pepsi)).
hasType(iPepsi2,unopened(pepsi)).
hasType(iPepsi3,unopened(pepsi)).

stock(Item,Level) :-
	% do a count here somehow
	hasType(Item,Type).

amountRemaining(iPepsi1,percent(40)).

amountRemaining(Item, percent(100)) :-
	hasType(Item,unopened(X)).

services([cellPhoneInternet,'<REDACTED>',electricity,water]).

:- import('list-utilities.pl').

service(Service) :-
	services(ServiceList),
	member(Service, ServiceList).

serviceStatus(cellPhoneInternet,off).
serviceStatus('<REDACTED>',off).
serviceStatus(electricity,on).
serviceStatus(water,on).

serviceShutOffDate('<REDACTED>',dayFn(2014,11,12)).
serviceTerminationDate('<REDACTED>',dayFn(2014,11,12)).
serviceTerminationDate('<REDACTED>',dayFn(2014,11,12)).

billIsOverdue('<REDACTED>',months(2)).

outstandingAmount('<REDACTED>',dollars(252.00))

cash('<REDACTED>',wallet,dollars(6)).


% overdue

% use KNext to process a home economics text book or something to get
% on top of the status of all bills, and remove predicates which
% relate.

% have a dashboard that reports the status and condition, and gives it
% a rating, along with recommended next actions

% have a command parser like from nani search, and have for instance:

% I am out of pepsi.


%% Have a model that calculates bills.  also have it have the ability
%% to estimate, based on our plans a range of expected prices, such as
%% for instance if it schedules to send a bunch of text messages and
%% you are billed per text message, or you download a lot of files
%% through your mobile internet and it charges you per bandwidth,
%% according to different schemes.  Also have worst case what if
%% scenarios, '<REDACTED>' for a range of different utilizations
%% regardless of expected.


%% Plan for the contingency that fraud detection blocks a legitimate
%% financial transaction.

%% Generate, based on a plan, a list of functionally related
%% contingencies.  For instance, if our plan involves a financial
%% transaction, iterate over possible outcomes and plan for them.
%% That could be accomplished with nondeterministic effects in FLUX.

