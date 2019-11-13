tests
testTaskItObjectValuable
	| t1 task |
	t1 := BaseTask new.
	t1 description: 'B'.
	t1 value: 200.
	task := waveExecutor returnTKT: t1.
	self assert: task valuable equals: t1.
	
	