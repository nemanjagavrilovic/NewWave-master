as yet unclassified
startExample9BoundaryEvent
"This example uses two parallel gateways, where both paths are taken, and uses two joines. "
	| se ee t1 t2 t3 we split1 engine be te |
TKTDebugger disable.
	se := StartEvent new.
	se description: 'StartEvent'.

	t1 := DialogTask new.
	t1 description: 'A'.
	
	be := BoundaryEvent new.
	be description: 'Boundzzzz'.
	be cancelActivity: true.
	
	te := TimerTempDefinition new.
	te timeDate: (DateAndTime now + 10 seconds).
	te repeat: false.
	te every: Duration zero.
	be addEventDefinition: te.

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

	be addOutgoingEdge: ee.
	t1 addBoundaryEvent: be.

   split1 addOutgoingEdge: t2 withCondition: [:x | x = true].
   split1 addOutgoingEdge: t3 withCondition: [:x | x = false].
	
	t2 addOutgoingEdge: ee.
	t3 addOutgoingEdge: ee.

	engine := WaveEngine new.
	we := WaveExecutor initialNode: se.
	engine addExecutor: we.
	engine startEngine.
	engine stopEngine.