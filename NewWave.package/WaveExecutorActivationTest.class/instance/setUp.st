tests
setUp
	| se ee t1 we seq seq2 fh engine |
	super setUp.
		
	se := StartEvent new.
	se description: 'StartEvent'.
	
	t1 := BaseTask new.
	t1 description: 'B'.
	t1 value: 200.
	
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
	waveExecutor := we.
	
	engine := WaveEngine new.
	engine addExecutor: we.
	