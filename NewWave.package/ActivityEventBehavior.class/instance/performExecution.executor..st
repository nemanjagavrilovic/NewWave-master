accessing
performExecution: elemToExecute executor: wave 
	elemToExecute boundaryEvents do: [ :each | wave execute: each ].