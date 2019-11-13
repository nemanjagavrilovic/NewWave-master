as yet unclassified
startExample10
"This example uses parallel gateway, where both paths are taken, and joined later."
| se ee t1 t2 t3 we split1 pj t4 engine pj2|
TKTDebugger disable.
se := StartEvent new.
se description: 'StartEvent'.

t1 := BaseTask new.
t1 description: 'A'.
t1 value: 200.

t2 := BaseTask new.
t2 description: 'B'.
t2 value: 250.

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

pj2 := ParallelJoin new.
pj2 description: 'PJ2'.


se addOutgoingEdge: split1.

split1 addOutgoingEdge: t1.
split1 addOutgoingEdge: t2. 
split1 addOutgoingEdge: t3.

t1 addOutgoingEdge: pj.
t2 addOutgoingEdge: pj.

pj addOutgoingEdge: t4.
t4 addOutgoingEdge: pj2.

t3 addOutgoingEdge: pj2.

pj2 addOutgoingEdge: ee.

engine := WaveEngine new.
we := WaveExecutor initialNode: se.
engine addExecutor: we.
engine startEngine.
