accessing
checkIsExecutorCompleted: jExecutor
	"This is where I check if the executor has finished its part. All sequences have come together."
	jExecutor checkIsFinished 
		ifTrue: [ 'Executor Completed' logCr. ^ true ] 
		ifFalse: [ 'Executor Not completed' logCr. ^ false ].