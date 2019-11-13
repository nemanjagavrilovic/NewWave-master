as yet unclassified
startExample5
"This example uses two parallel gateways, one immediately after another where both paths are taken, and joined later. Doesnt use any task as intermediate after ps1 to ps2."
| start psplit1 a b c psplit2 pjoin1 e1 e2 we engine 
seqeps1
seqps1a
seqps1ps2 
seqps2b 
seqps2c 
seqce2 
seqabpj1
seqapj1 
seqpj1e|

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

psplit2 := Parallel new.
psplit2 description: 'Parallel Split 2'.

e1 := EndEvent new.
e1 description: 'End Event 1'.

e2 := EndEvent new.
e2 description: 'End Event 2'.

seqeps1 := Sequence source: start target: psplit1.
seqps1a := Sequence source: psplit1  target: a.
seqps1ps2 := Sequence source: psplit1  target: psplit2.
seqps2b := Sequence source: psplit2 target: b.
seqps2c := Sequence source: psplit2 target: c.
seqce2 := Sequence source: c target: e2. 
seqabpj1 := Sequence source: b target: pjoin1.
seqapj1 := Sequence source: a  target: pjoin1.
seqpj1e := Sequence source: pjoin1 target: e1. 


start addOutgoingFlow: seqeps1.
psplit1 addIncoming: seqeps1 addOutgoingList: (OrderedCollection with: seqps1a with: seqps1ps2).

a addIncoming: seqps1a addOutgoing: seqapj1.
b addIncoming: seqps2b addOutgoing: seqabpj1.
pjoin1 addIncomingList: (OrderedCollection with: seqapj1 with: seqabpj1 ) addOutgoing: seqpj1e.

psplit2 addIncoming: seqps1ps2  addOutgoingList: (OrderedCollection with: seqps2b  with: seqps2c ).

c addIncoming: seqps2c  addOutgoing: seqce2.

e1 addIncomingFlow: seqpj1e.
e2 addIncomingFlow: seqce2.

engine := WaveEngine new.
we := WaveExecutor initialNode: start.
engine addExecutor: we.
engine startEngine.