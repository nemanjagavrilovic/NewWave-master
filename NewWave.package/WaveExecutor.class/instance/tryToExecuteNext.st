accessing
tryToExecuteNext
	| tmp |
	tmp := self shouldExecuteNextNewHandler.
	"So this should happen once, when the element should be activated and executed"
	"self newActivationForNode: tmp."
	self execute: tmp.