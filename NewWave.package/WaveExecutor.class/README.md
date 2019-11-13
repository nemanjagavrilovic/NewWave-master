I am an executor in the workflow engine. To work i need context (WaveEngine) and flowHandler for handling the flow and determining the paths of execution.

In order to initialize, I need a node an initial which contains the information needed for execution.
The most basic execution would be from start to end node.

start := StartEvent new.
start description: 'StartEvent'.

end := EndEvent new.
end description: 'End Event ee'.

seq1 := Sequence source: start target: end.
start addOutgoingFlow: seq1.
end addIncomingFlow: seq1. 

we := WaveExecutor initialNode: start.

Internal Representation and Key Implementation Points.

    Instance Variables
	engine:		<Object>
	flowHandler:		<Object>
	taskResult:		<Object>
	waveAnnouncer:		<Object>
	workers:		<Object>


    Implementation Points