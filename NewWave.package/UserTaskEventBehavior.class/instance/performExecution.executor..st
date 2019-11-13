accessing
performExecution: elemToExecute executor: wave
	super performExecution: elemToExecute  executor: wave.
	'ovaj' logCr.
	elemToExecute announcer subscribe: WaveAnnouncer
		do: [ :a | a parameter logCr. wave taskResult: a parameter. wave tryToExecuteNext: elemToExecute.].
	elemToExecute value.