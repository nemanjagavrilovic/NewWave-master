tests
testExistingActivationForNode
	| se |
	se := waveExecutor shouldExecuteNextNewHandler.
	waveExecutor newActivationForNode: se.
	self should: [ waveExecutor newActivationForNode: se. ] raise: Error.
	
