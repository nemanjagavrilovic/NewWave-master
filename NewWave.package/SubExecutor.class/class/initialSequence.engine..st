as yet unclassified
initialSequence: sequence engine: executor
	| we |
	we := WaveExecutor initialNode: sequence targetRef engine: executor.
	we flowHandler addSequence: sequence.
	^ self new 
		executor: we;
		engine: executor;
		previousNode: sequence sourceRef;
		yourself.