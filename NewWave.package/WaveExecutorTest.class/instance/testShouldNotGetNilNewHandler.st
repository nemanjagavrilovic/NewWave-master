tests
testShouldNotGetNilNewHandler
	| node |
	node := waveExecutor shouldExecuteNextNewHandler.
	self assert: node isNotNil.
	node := waveExecutor shouldExecuteNextNewHandler.
	self assert: node isNotNil.
	node := waveExecutor shouldExecuteNextNewHandler.
	self assert: node isNotNil.
	node := waveExecutor shouldExecuteNextNewHandler.
	self assert: node isNotNil.
	
	