accessing
performExecution: elemToExecute executor: wave
	| sequence |
	sequence := wave flowHandler sequences at: (wave flowHandler sequences size -1).
	wave engine engineAnnouncer announce: (JoinEventAnnouncer with: sequence executor: wave).
	"wave waveAnnouncer announce: JoinEventAnnouncer new."
	
	