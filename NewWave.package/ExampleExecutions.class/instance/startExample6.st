as yet unclassified
startExample6
"This example uses two parallel gateways, where both paths are taken, and joined later. Doesnt use any task as intermediate after ps2 to pj1."
| start  psplit1 a b c d psplit2 pjoin1 e1 e2 seqeps1 seqps1a seqps1b seqapj1 seqpj1e seqbps2 seqps2d seqde2 we seqps2pj1 engine|
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

pjoin1 := ParallelJoin new.
pjoin1 description: 'Parallel Join 1'.

psplit2 := Parallel new.
psplit2 description: 'Parallel Split 2'.

e1 := EndEvent new.
e1 description: 'End Event 1'.

e2 := EndEvent new.
e2 description: 'End Event 2'.

seqeps1 := Sequence source: start target: psplit1.
seqps1a := Sequence source: psplit1  target: a.
seqps1b := Sequence source: psplit1  target: b.
seqapj1 := Sequence source: a target: pjoin1.
seqpj1e := Sequence source: pjoin1  target: e1.
seqbps2 := Sequence source: b target: psplit2.
seqps2pj1 := Sequence source: psplit2 target: pjoin1.

seqps2d := Sequence source: psplit2  target: d.
seqde2 := Sequence source: d target: e2.

start addOutgoingFlow: seqeps1.
psplit1 addIncoming: seqeps1 addOutgoingList: (OrderedCollection with: seqps1a with: seqps1b).

a addIncoming: seqps1a addOutgoing: seqapj1.
b addIncoming: seqps1b addOutgoing: seqbps2.
pjoin1 addIncomingList: (OrderedCollection with: seqapj1 with: seqps2pj1 ) addOutgoing: seqpj1e.

psplit2 addIncoming: seqbps2  addOutgoingList: (OrderedCollection with: seqps2pj1 with: seqps2d).

d addIncoming: seqps2d  addOutgoing: seqde2.

e1 addIncomingFlow: seqpj1e.
e2 addIncomingFlow: seqde2.

engine := WaveEngine new.
we := WaveExecutor initialNode: start.
engine addExecutor: we.
engine startEngine.