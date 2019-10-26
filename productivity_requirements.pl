%% SEE ALSO: /var/lib/myfrdcsa/codebases/internal/verber/data/worldmodel/templates/flp/productivity.d.verb
%%           /var/lib/myfrdcsa/codebases/internal/verber/data/worldmodel/templates/flp/productivity.p.verb

%% %% probably have to compile these into a PDDL goal formula in DNF or
%% %% CNF in order to avoid limitations to available pl'<REDACTED>'ers

%% (figure out why I am not more productive, and add to preconditions,
%%  preferences of productivity

%% (I got rested enough and an energy drink and am productive)

derived(unableToBeProductive(are(['$VAR'('Person')],person)),
	[or([
	     hasDistractions('$VAR'('Person'))
	    ])]).

%% energyDrinks notNecessarilySugarKind

derived(hasDistractions(are(['$VAR'('Person')],person)),
	[or([
	     isInPain('$VAR'('Person')),
	     lacksProvisions('$VAR'('Person')),

	     hasCrisisHangingOverHead('$VAR'('Person')),
	     isDreading('$VAR'('Person'),'$VAR'('Thing')),
	     has('$VAR'('Person'),stressors),

	     isInMaterialWant('$VAR'('Person')),

	     hasSocialAnxiety('$VAR'('Person')),
	     unableToSleep('$VAR'('Person')),
	     hasInterruptions('$VAR'('Person')),
	     hasOtherCommitments('$VAR'('Person')),
	     recentlyMissedTakingMedications('$VAR'('Person'))
	    ])]).

%% '<REDACTED>' a certain number of days in a row free of distractions.

%% daysUntilExpectedChangeOfState, free from dread of
%% change in situation, or responsibility to plan for
%% changes

derived(hasOtherCommitments(are(['$VAR'('Person')],person)),
	[or([
	     exists([are(['$VAR'('Person2')],person)],[hasSomethingForMeToDo(Person)])
	    ])]).

derived(isInPain(are(['$VAR'('Person')],person)),
	[or([
	     exists([are(['$VAR'('Pain')],pain)],[hasPain('$VAR'('Person'),'$VAR'('Pain'))]),
	     hasToothache('$VAR'('Person')),
	     hasBiologicalIssues('$VAR'('Person'))
	    ])]).

derived(hasCrisisHangingOverHead(are(['$VAR'('Person')],person)),
	[or([
	     unableToPayUpcomingBills([are(['$VAR'('Pain')],pain)],[hasPain('$VAR'('Person'),'$VAR'('Pain'))])
	    ])]).

derived(hasSocialAnxiety(are(['$VAR'('Person')],person)),
	[or([
	     isMadAt('$VAR'('Person2'),'$VAR'('Person')),
	     blaming('$VAR'('Person2'),'$VAR'('Person')),
	     scapegoating('$VAR'('Person2'),'$VAR'('Person')),
	     hasUpcomingSocietyEvent('$VAR'('Person'),'$VAR'('Event'))
	    ])]).

derived(lackingSomeUtilties(are(['$VAR'('Environment')],environment)),
	[neg(and([
		  hasService('$VAR'('Environment'),internet),
		  hasService('$VAR'('Environment'),water),
		  hasFacility('$VAR'('Environment'),bathroom),
		  hasService('$VAR'('Environment'),electricity)
		 ]))]).

derived(lacksAmenities(are(['$VAR'('Environment')],workEnvironment)),
	[or([
	     lackingSomeUtilities('$VAR'('Environment')),
	     lacksProvisions('$VAR'('Environment')),
	     neg(hasService('$VAR'('Environment'),drinkingWater)),
	     neg(hasConvienetAccessToAStore('$VAR'('Environment'))),
	     disorderedEnvironment(are(['$VAR'('Person')],person),'$VAR'('Environment'))
	    ])]).

derived(isInMaterialWant('$VAR'('Person')),
	(   [or([
		 neg(supplyChainIsSecure('$VAR'('Person'))),
		 and([
		      isInEnvironment('$VAR'('Person'),'$VAR'('Environment')),
		      lacksProvisions('$VAR'('Environment'))
		     ])
		])])).

derived(lacksProvisions('$VAR'('Environment')),
	[neg(and([
		  hasItemOfType('$VAR'('Environment'),'$VAR'('Item'),water),
		  hasItemOfType('$VAR'('Environment'),'$VAR'('Item'),water)
		 ]))]).	

oderived(disorderedEnvironment(are(['$VAR'('Person')],person),are(['$VAR'('Environment')],environment)),
	[not(
	     and([
		  furnanceFilterInstalled('$VAR'('Environment')),
		  airFilterFiltersInstalled('$VAR'('Environment')),
		  supplyChainIsSecure('$VAR'('Person')),
		  neg(exists([are(['$VAR'('Object')],object)],[and([isEssentialPartOfEnvironment('$VAR'('Object')),broken('$VAR'('Object'))])]))
		 ]))]).

derived(lacksProperWorkEnvironment(are(['$VAR'('Person')],person),are(['$VAR'('WorkEnvironment')],workEnvironment)),
	[not(and([
		  neg(hasItemOfType('$VAR'('Person'),'$VAR'('Item'),funds)),
		  neg(lacksAmenities('$VAR'('WorkEnvironment'))),
		  workSetupAvailable,

		  %% need something for peripherals/tools
		  hasCapability(imakSmartGloves),
		  has('$VAR'('Person'),operational('$VAR'('Headset'))),
		  %% exists phone ( canUse(person,phone), isCharged... )
		  has('$VAR'('Person'),operational('$VAR'('Phone'))),
		  is(phone,on(charger)),

		  computersAreWorking %% fix as a neg (forall
		 %% computer, computer is
		 %% working)
		 ]))]).

derived(lacksProperShelter(are(['$VAR'('Person')],person),are(['$VAR'('Shelter')],shelter)),
	[or([
	     lacksAmenities('$VAR'('Shelter'))
	    ])]).

derived(isPhysicallyUnfitToWork(are(['$VAR'('Person')],person)),
	[or([
	     sick('$VAR'('Person')),
	     tired('$VAR'('Person')),
	     disturbedSleepSchedule('$VAR'('Person')),
	     neg(is('$VAR'('Person'),healthy))
	    ])]).

derived(isEmotionallyUnfitToWork(are(['$VAR'('Person')],person)),
	[or([
	     avolition('$VAR'('Person')),
	     languishing('$VAR'('Person')),
	     lacksFortitude('$VAR'('Person'))
	    ])]).

derived(isMentallyUnfitToWork(are(['$VAR'('Person')],person)),
	[or([
	     neg(hasClearConceptionOfWhatNeedsToBeDone('$VAR'('Person'))),
	     avolition('$VAR'('Person')),
	     languishing('$VAR'('Person')),
	     neg(has('<REDACTED>''<REDACTED>',and([geist,motivation])))
	    ])]).

%% forceMultiplier()

%% For '<REDACTED>'

%% increasesChanceOf(willBeProductive('<REDACTED>''<REDACTED>'))
%% 	hasCapability(headset).

%% possible(willBeProductive('<REDACTED>''<REDACTED>')) :-
%% 	hasEnough('<REDACTED>''<REDACTED>',food),
