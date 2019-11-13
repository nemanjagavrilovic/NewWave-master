tests
setUp 
	| se we seq fh engine |
	super setUp.
		
	se := StartEvent new.
	se description: 'StartEvent'.
	
	seq := Sequence source: se target: nil.
	
	se addOutgoingFlow: seq.
	
	fh := FlowHandler new.
	fh node: se.
	
	we := WaveExecutor new.
	we flowHandler: fh.
	waveExecutor := we.
	engine := WaveEngine new.
	engine addExecutor: waveExecutor.