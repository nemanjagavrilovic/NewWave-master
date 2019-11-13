as yet unclassified
startExample7
"This example uses two parallel gateways, where both paths are taken, and uses two joines. "
| start  psplit1 a b c  psplit2 pjoin1 e1 e2 we  engine 
seqeps1
seqps1a
seqps1ps2 
seqps2b 
seqps2c 
seqce2 
seqabpj1
seqapj1 
seqpj1e
pjoin2
seqe1pj2
seqe2pj2
seqpj2ee
ee|

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

pjoin1 := ParallelJoin new.
pjoin1 description: 'Parallel Join 1'.

pjoin2 := ParallelJoin new.
pjoin2 description: 'Parallel Join 2'.

psplit2 := Parallel new.
psplit2 description: 'Parallel Split 2'.

e1 := BaseTask new.
e1 description: 'E1 '.
e1 value: 'E1 has been performed!'.

e2 := BaseTask  new.
e2 description: 'E2'.
e2 value: 'E2 has been performed!'.

ee := EndEvent new.
ee description: 'End Event ee'.

seqeps1 := Sequence source: start target: psplit1.
seqps1a := Sequence source: psplit1  target: a.
seqps1ps2 := Sequence source: psplit1  target: psplit2.
seqps2b := Sequence source: psplit2 target: b.
seqps2c := Sequence source: psplit2 target: c.
seqce2 := Sequence source: c target: e2. 
seqabpj1 := Sequence source: b target: pjoin1.
seqapj1 := Sequence source: a  target: pjoin1.
seqpj1e := Sequence source: pjoin1 target: e1. 
seqe1pj2 := Sequence source: e1 target: pjoin2.
seqe2pj2 := Sequence source: e2 target:  pjoin2.
seqpj2ee := Sequence source: pjoin2  target: ee. 


start addOutgoingFlow: seqeps1.
psplit1 addIncoming: seqeps1 addOutgoingList: (OrderedCollection with: seqps1a with: seqps1ps2).

a addIncoming: seqps1a addOutgoing: seqapj1.
b addIncoming: seqps2b addOutgoing: seqabpj1.
pjoin1 addIncomingList: (OrderedCollection with: seqapj1 with: seqabpj1 ) addOutgoing: seqpj1e.

psplit2 addIncoming: seqps1ps2  addOutgoingList: (OrderedCollection with: seqps2b  with: seqps2c ).

c addIncoming: seqps2c  addOutgoing: seqce2.

e1 addIncoming: seqpj1e addOutgoing: seqe1pj2. 
e2 addIncoming: seqce2 addOutgoing: seqe2pj2. 

pjoin2 addIncomingList: (OrderedCollection with: seqe1pj2  with: seqe2pj2 ) addOutgoing: seqpj2ee.

ee addIncomingFlow: seqpj2ee. 

engine := WaveEngine new.
we := WaveExecutor initialNode: start.
engine addExecutor: we.
engine startEngine.