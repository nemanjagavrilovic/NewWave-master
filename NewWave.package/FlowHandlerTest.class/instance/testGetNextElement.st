tests
testGetNextElement
	| n |
	n := flowHandler getNextElement.
	self assert: n class == StartEvent.
	n := flowHandler getNextElement.
	self assert: n class == BaseTask.
	n := flowHandler getNextElement.
	self assert: n class == EndEvent.
	n := flowHandler getNextElement.
	self assert: n class == NullNode.