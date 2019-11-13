as yet unclassified
startExample2
"This example uses parallel gateway, where both paths are taken, and joined later."
| se ee t1 t2 t3 we split1 pj t4 engine|
TKTDebugger disable.
se := StartEvent new.
se description: 'StartEvent'.

t1 := BaseTask new.
t1 description: 'B'.
t1 value: 200.

t2 := DialogTask new.
t2 description: 'A'.

t3 := BaseTask new.
t3 description: 'C'.
t3 value: 300.

t4 := BaseTask new.
t4 description: 'D'.
t4 value: 400.

ee := EndEvent new.
ee description: 'EndEvent'.

split1 := Parallel new.
split1 description: 'Split1'.

pj := ParallelJoin new.
pj description: 'ParallelJoin'.

se addOutgoingEdge: t1.
t1 addOutgoingEdge: split1.

split1 addOutgoingEdge: t2 withCondition: [ :x | x = true ]. 
split1 addOutgoingEdge: t3 withCondition: [ :x | x = false ].

t2 addOutgoingEdge: pj.
t3 addOutgoingEdge: pj.

pj addOutgoingEdge: t4.
t4 addOutgoingEdge: ee.

engine := WaveEngine new.
we := WaveExecutor initialNode: se.
engine addExecutor: we.
engine startEngine.