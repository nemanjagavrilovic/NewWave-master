accessing
tryToExecuteNext: aCompletedNode
	| tmp |
	self workList addToCompleted: (self activationForNode: aCompletedNode).
	tmp := self shouldExecuteNextNewHandler.
	"So this should happen once, when the element should be activated and executed"
	"self newActivationForNode: tmp."
	self execute: tmp.