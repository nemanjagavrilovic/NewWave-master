accessing
addSequenceToExecutors: aSequence
	| jExecutor |
	jExecutor := joinExecutors select: [ :each | each joinNode = aSequence targetRef  ].
	jExecutor ifNotEmpty: [  
		| ex |
		ex := jExecutor first.
		ex addIncSequence: aSequence.
		^ ex.
	]  
	ifEmpty: [  
		| je |
		je := JoinExecutor new.
		je joinNode: aSequence targetRef.
		je addIncSequence: aSequence.
		self addJoinExecutor: je.
		^ je.
	]. 