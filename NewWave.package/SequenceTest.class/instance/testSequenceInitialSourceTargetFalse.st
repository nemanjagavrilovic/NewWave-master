tests
testSequenceInitialSourceTargetFalse
	| s a b |
	a := BaseTask new.
	b := BaseTask new.
	s := Sequence source: a target: b condition: true.
	self assert: s srcFetched equals: false.
	self assert: s targetFetched equals: false.