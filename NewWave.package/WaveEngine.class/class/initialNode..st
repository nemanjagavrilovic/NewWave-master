as yet unclassified
initialNode: startNode
	| we | 
	we := WaveExecutor initialNode: startNode.
	^ self new 
		addExecutor: we;
		yourself.