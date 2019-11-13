tests
testJoinExecutorsInitializes
	| jh |
	jh := JoinHandler new.
	self assert: jh joinExecutors size equals: 0.