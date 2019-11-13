tests
testFirstNodeIsStartEventByEquality
	| node |
	node := waveExecutor flowHandler node.
	self assert: node class == StartEvent.
	