paypalFeeCalculator1(Amount,Total) :-
	Tmp1 is Amount * 1.029,
	Total is Tmp1 + 0.30.

paypalFeeCalculator2(Amount,Total) :-
	Tmp1 is Total - 0.30,
	Amount is Tmp1 / 1.029.

%% Amount is Tmp1 * 0.9718172983479106.

%% 31.51

%% 33.72

%% 2.22