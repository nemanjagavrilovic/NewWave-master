tests
testNewActivationForNode
	| activation se |
	se := waveExecutor shouldExecuteNextNewHandler.
	activation := waveExecutor newActivationForNode: se.
	self assert: activation isNotNil.

	
