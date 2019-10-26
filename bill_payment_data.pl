%% paid('<REDACTED>',billFn('<REDACTED>',[2017-3-13],for(dollars(43.11))),paidOn([2017-3-28,14:0:0]),confirmationNumber('<REDACTED>'),paymentDate([2017-3-28])).

billIssued('<REDACTED>','<REDACTED>',dollars(128.61),[2017-3-13]).
hasBill('<REDACTED>','<REDACTED>',dollars(128.61),dueBy([2017-4-3])).
coversTimePeriod('<REDACTED>','<REDACTED>',dollars(128.61),[[2016-2-9],[2017-3-10]]).
paid('<REDACTED>',billFn('<REDACTED>',[2017-3-13],for(dollars(128.61))),paidOn([2017-04-07,07:31:39]),confirmationNumber('<REDACTED>'),paymentDate([2017-4-7])).

%% billIssued('<REDACTED>','<REDACTED>',dollars(25.00),[2017-3-13]).
hasBill('<REDACTED>','<REDACTED>',dollars(25.00),dueBy([2017-3-29])).
coversTimePeriod('<REDACTED>','<REDACTED>',dollars(25.00),[[2016-2-13],[2017-3-12]]).
paid('<REDACTED>',billFn('<REDACTED>',[2017-3-29],for(dollars(25.00))),paidOn([2017-04-06,10:54:48]),confirmationNumber('<REDACTED>'),paymentDate([2017-4-6])).


billSchedulingInfo(['<REDACTED>','<REDACTED>','<REDACTED>'],comeEveryOtherMonth).

billSchedulingInfo(['<REDACTED>'],'comes the second wednesday of every (in this case that wednesday is the 9th) at midnight between tuesday and wednesday, (i.e. the 8th and the 9th this month)').
