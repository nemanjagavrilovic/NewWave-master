tests
testOutgoingFlow
	| t1 t2 s |
	t1 := BaseTask new.
	t1 description: 'A'.
	t1 value: 200.
	t2 := BaseTask new.
	t2 description: 'B'.
	t2 value: 200.
	s := Sequence source: t1 target: t2.
	t1 addOutgoingFlow: s.
	self assert: t1 outgoingFlows size equals: 1