tests
testSequenceCreation
	| s a b |
	a := BaseTask new.
	b := BaseTask new.
	s := Sequence source: a target: b.
	self assert: s sourceRef equals: a.
	self assert: s targetRef equals: b.