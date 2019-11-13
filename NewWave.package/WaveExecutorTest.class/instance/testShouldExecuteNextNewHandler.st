tests
testShouldExecuteNextNewHandler
	| node |
	node := waveExecutor shouldExecuteNextNewHandler.
	self assert: node isNotNil.
	
	