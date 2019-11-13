tests
testExecutorAddingElements
| t1 t2 t3 seq seq2 seq3 pj ee jh jexecutor jtmp |
	
	t1 := BaseTask new.
	t1 description: 'B'.
	t1 value: 200.
	
	t2 := BaseTask new.
	t2 description: 'C'.
	t2 value: 300.
	
	t3 := BaseTask new.
	t3 description: 'D'.
	t3 value: 400.
	
	pj := ParallelJoin new.
	pj description: 'ParallelJoin'.
	
	ee := EndEvent new.
	ee description: 'EndEvent'.
	
	seq := Sequence source: t1 target: pj.
	seq2 := Sequence source: t2 target: pj.
	seq3 := Sequence source: pj target: ee. 
	
	pj addIncomingFlow: seq.
	pj addIncomingFlow: seq2.
	pj addOutgoingFlow: seq3.
	
	jh := JoinHandler new.
	jtmp := jh addSequenceToExecutors: seq.
	jexecutor := jh addSequenceToExecutors: seq2.
	self assert: jtmp equals: jexecutor