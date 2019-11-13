as yet unclassified
performExecution: elemToExecute executor: wave
	wave waveAnnouncer subscribe: StartAnnouncer 
		do: [ 
			| worker |
			worker := TKTWorker new.
			worker start.
			('Starting worker on process ', Processor activeProcess identityHash asString) logCr.
			('Worker process is ', worker process identityHash asString ) logCr.
			wave workers at: worker name put: worker.
			wave flowHandler workerid: worker name.
			wave tryToExecuteNext: elemToExecute.
		]