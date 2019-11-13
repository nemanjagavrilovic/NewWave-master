as yet unclassified
initialProcess: aProcess
	| we | 
	we := WaveExecutor initialNode: aProcess initialFlowElement.
	^ self new 
		addExecutor: we;
		process: aProcess;
		yourself.