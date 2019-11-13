tests
testActivationForNode
	| se act1 |
	se := waveExecutor shouldExecuteNextNewHandler.
	act1 := waveExecutor activationForNode: se.
	self assert: act1 equals: (waveExecutor activationForNode: se).
	
