as yet unclassified
performExecution: elemToExecute executor: wave 
	| aFuture tktElem |
	super performExecution: elemToExecute  executor: wave. 
	tktElem := wave returnTKT: elemToExecute.
	elemToExecute assigne checkAsssigne: elemToExecute.
	aFuture := wave worker future: [ tktElem value ].
	aFuture onSuccessDo: [ :v |  v logCr. wave taskResult: v. wave tryToExecuteNext: elemToExecute ].
	aFuture onFailureDo: [ :v | 'failed' logCr. v logCr. ]