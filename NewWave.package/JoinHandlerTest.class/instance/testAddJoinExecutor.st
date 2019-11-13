tests
testAddJoinExecutor
	| je jh |
	je := JoinExecutor new.
	jh := JoinHandler new.
	jh addJoinExecutor: je.
	self assert: jh joinExecutors size equals: 1.