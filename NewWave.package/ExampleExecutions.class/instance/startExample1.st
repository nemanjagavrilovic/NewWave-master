as yet unclassified
startExample1
	"This example uses exclusive gateway, where one of the two paths is taken based on the user input."
	| se ee t1 t2 t3 we split1 engine|

	se := StartEvent new.
	se description: 'StartEvent'.

	t1 := DialogTask new.
	t1 description: 'A'.

	t2 := BaseTask new.
	t2 description: 'B'.
	t2 value: 200.

	t3 := BaseTask new.
	t3 description: 'C'.
	t3 value: 300.

	ee := EndEvent new.
	ee description: 'EndEvent'.

	split1 := Exclusive new.
	split1 description: 'Split1'.
	
	se addOutgoingEdge: t1.
	t1 addOutgoingEdge: split1.
	split1 addOutgoingEdge: t2 withCondition: [ :x | x = true ].
	split1 addOutgoingEdge: t3 withCondition: [ :x | x = false ].
	
	t2 addOutgoingEdge: ee.
	t3 addOutgoingEdge: ee.
	
	engine := WaveEngine new.
	we := WaveExecutor initialNode: se.
	engine addExecutor: we.
	engine startEngine.
	engine stopEngine.