accessing
addSubExecutor: anInitialSequence
	| se |
	se := SubExecutor initialSequence: anInitialSequence engine: self.
	se startSubExecutor.
	subExecutors add: se.