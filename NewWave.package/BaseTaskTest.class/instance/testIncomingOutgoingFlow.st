tests
testIncomingOutgoingFlow
	| t1 t2 t3 s s2 |
	t1 := BaseTask new.
	t1 description: 'A'.
	t1 value: 200.
	
	t2 := BaseTask new.
	t2 description: 'B'.
	t2 value: 200.
	
	t3 := BaseTask new.
	t3 description: 'C'.
	t3 value: 300.
	
	s := Sequence source: t1 target: t2.
	s2 := Sequence source: t2 target: t3. 
	t1 addOutgoingFlow: s.
	t2 addIncoming: s addOutgoing: s2.
	t3 addIncomingFlow: s2.
	self assert: t2 incomingFlows size equals: 1.
	self assert: t2 outgoingFlows size equals: 1.
	



