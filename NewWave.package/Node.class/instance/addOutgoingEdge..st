initialization
addOutgoingEdge: anElement
	| sequence |
	sequence := Sequence source: self target: anElement.
	self addOutgoingFlow: sequence.
	anElement addIncomingFlow: sequence.
	