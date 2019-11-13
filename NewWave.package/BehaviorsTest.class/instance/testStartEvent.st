tests
testStartEvent
	| seBehavior |
	seBehavior := StartEventBehavior new.
	seBehavior performExecution: waveExecutor flowHandler node executor: waveExecutor.
	waveExecutor waveAnnouncer announce: StartAnnouncer new.
	self assert: waveExecutor workers size equals: 1.
	