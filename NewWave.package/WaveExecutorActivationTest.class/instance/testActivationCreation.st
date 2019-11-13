tests
testActivationCreation
	| se we|
	se := StartEvent new.
	se description: 'StartEvent'.
	we := WaveExecutor initialNode: se.
	self shouldnt: [ WaveActivation node: se executor: we] raise: Error.
	
