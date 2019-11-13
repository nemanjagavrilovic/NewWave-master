tests
testAddSequenceToExecutors
	
	| se t1 seq je jh rez |
	se := StartEvent new.
	se description: 'StartEvent'.
	
	t1 := BaseTask new.
	t1 description: 'B'.
	t1 value: 200.
	
	seq := Sequence source: se target: t1.

	jh := JoinHandler new.
	jh addSequenceToExecutors: seq.
	self assert: jh joinExecutors size equals: 1.
