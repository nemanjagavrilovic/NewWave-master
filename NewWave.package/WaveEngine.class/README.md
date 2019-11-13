I am a class that represents the engine of the workflow. Execution is started through this class by calling message startEngine which accesses the main executor.
Engine contains one main executor and other subexecutors (depending on the model) and a system of announcers which announnces when something happens during execution.

We create engine using, and then provide it with main executor. Main executor needs the node from which he will start executing. We start the execution by simply calling startEngine. 

start := StartEvent new.
start description: 'StartEvent'.

end := EndEvent new.
end description: 'End Event ee'.

seq1 := Sequence source: start target: end.
start addOutgoingFlow: seq1.
end addIncomingFlow: seq1. 

engine := WaveEngine new.
we := WaveExecutor initialNode: start.
engine addExecutor: we.
engine startEngine.

Internal Representation and Key Implementation Points.

Instance Variables
	engineAnnouncer: Announcer for receiving announcements in the engine (eg. joinCompleted)
	joinHandler:		JoinHandler for handling joins in the engine
	mainExecutor:		WaveExecutor for performing main execution
	subExecutors:		SubExecutor for spawning new subexecutors (type of WaveExecutor)


    Implementation Points