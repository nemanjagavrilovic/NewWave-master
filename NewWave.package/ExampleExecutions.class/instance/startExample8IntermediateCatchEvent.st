as yet unclassified
startExample8IntermediateCatchEvent
"This example uses intermediate event, where execution is paused for 40 seconds, and then completed. "
| se ee t1 we seq seq2 fh engine te |
	se := StartEvent new.
	se description: 'StartEvent'.
	
	t1 := IntermediateCatchEvent new.
	t1 description: 'Intermediate Catch Event'.
	
	te := TimerTempDefinition new.
	te timeDate: (DateAndTime now + 15 seconds).
	te repeat: false.
	te every: Duration zero.
	t1 addEventDefinition: te.
	
	ee := EndEvent new.
	ee description: 'EndEvent'.
	
	seq := Sequence source: se target: t1.
	seq2 := Sequence source: t1 target: ee.
	
	se addOutgoingFlow: seq.
	t1 addIncoming: seq addOutgoing: seq2.
	ee addIncomingFlow: seq2.
	
	fh := FlowHandler new.
	fh node: se.
	
	we := WaveExecutor new.
	we flowHandler: fh.
	engine := WaveEngine new. 
	engine addExecutor: we.
	engine startEngine.
"	20 seconds asDelay wait.
	engine stopEngine."