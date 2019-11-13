accessing
addExecutor: anExecutor
	self mainExecutor: anExecutor.
	self mainExecutor engine: self.
	"parameter iz announcera mi je seekvenca "
	engineAnnouncer subscribe: JoinEventAnnouncer 
	do: [ 
			:ann | | tmpExecutor rez | 
			tmpExecutor := joinHandler addSequenceToExecutors: ann parameter.
			rez := joinHandler checkIsExecutorCompleted: tmpExecutor.
			rez ifTrue: [ | an |
				an := tmpExecutor returnNodeAfterJoin.
				mainExecutor flowHandler node: an. 
				mainExecutor tryToExecuteNext: tmpExecutor joinNode.
			].
			('Ending-SUB-Worker process is ', ann executor worker process identityHash asString) logCr.
			ann executor worker stop.
	].