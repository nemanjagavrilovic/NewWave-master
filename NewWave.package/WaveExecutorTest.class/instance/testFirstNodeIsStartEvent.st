tests
testFirstNodeIsStartEvent
	| node |
	node := waveExecutor flowHandler node.
	self assert: (node isMemberOf: StartEvent) equals: true.
	