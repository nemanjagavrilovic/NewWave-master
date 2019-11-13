accessing
performExecution: elemToExecute executor: wave
	"Here we send sequence to executor, that lead up to the node that has to be performed, after the gateway. From the sequence we get the target node and execute it."
	elemToExecute outgoingFlows do: [ :each | wave engine addSubExecutor: each ].
	"This is basically to say to stop every subexecutor, after it finishes, but to leave main one"
	wave engine mainExecutor = wave ifFalse: [ 
		wave worker stop.
	].
	
	
	