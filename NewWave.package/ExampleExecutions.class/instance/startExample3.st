as yet unclassified
startExample3
"This example uses two parallel gateways, where both paths are taken, and joined later."
| start  psplit1 a b c d psplit2 pjoin1 e1 e2 we f engine |
TKTDebugger disable.
start := StartEvent new.
start description: 'StartEvent'.

psplit1 := Parallel new.
psplit1 description: 'Parallel Split 1'.

a := BaseTask new.
a description: 'A'.
a value: 'A has been performed'.

b := BaseTask new.
b description: 'B'.
b value: 'B has been performed'.

c := BaseTask new.
c description: 'C'.
c value: 'C has been performed'.

d := BaseTask new.
d description: 'D'.
d value: 'D has been performed'.

f := BaseTask new.
f description: 'F'.
f value: 'F has been performed'.

pjoin1 := ParallelJoin new.
pjoin1 description: 'Parallel Join 1'.

psplit2 := Parallel new.
psplit2 description: 'Parallel Split 2'.

e1 := EndEvent new.
e1 description: 'End Event 1'.

e2 := EndEvent new.
e2 description: 'End Event 2'.

start addOutgoingEdge: psplit1.
psplit1 addOutgoingEdge: a.
psplit1 addOutgoingEdge: b.
a addOutgoingEdge: pjoin1.
pjoin1 addOutgoingEdge: f.
b addOutgoingEdge: psplit2.
psplit2 addOutgoingEdge: c.
c addOutgoingEdge: pjoin1.
psplit2 addOutgoingEdge: d.
d addOutgoingEdge: e2.
f addOutgoingEdge: e1.

engine := WaveEngine new.
we := WaveExecutor initialNode: start.
engine addExecutor: we.
engine startEngine.