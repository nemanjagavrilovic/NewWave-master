tests
testFirstNodeIsStartEventByName
	| node |
	node := waveExecutor flowHandler node.
	self assert: node class name equals: 'StartEvent'.
	