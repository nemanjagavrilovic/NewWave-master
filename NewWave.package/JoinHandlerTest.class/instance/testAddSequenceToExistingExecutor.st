tests
testAddSequenceToExistingExecutor
	
	| t1 t2 t3 seq seq2  pj  jh  |
	
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
	
	seq := Sequence source: t1 target: pj.
	seq2 := Sequence source: t2 target: pj.
	
	
	jh := JoinHandler new.
	jh addSequenceToExecutors: seq.
	jh addSequenceToExecutors: seq2.
	self assert: jh joinExecutors size equals: 1.
