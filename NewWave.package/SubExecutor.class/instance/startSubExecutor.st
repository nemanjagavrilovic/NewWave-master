finalization
startSubExecutor
	| worker |
	worker := TKTWorker new.
	worker start.
	('Starting worker on SUB-process ', Processor activeProcess identityHash asString) logCr.
	('SUB-Worker process is ', worker process identityHash asString ) logCr.
	executor workers at: worker name put: worker.
	executor flowHandler workerid: worker name.
	executor tryToExecuteNext: previousNode.
	