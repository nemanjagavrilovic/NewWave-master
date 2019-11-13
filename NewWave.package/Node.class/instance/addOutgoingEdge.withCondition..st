initialization
addOutgoingEdge: anElement withCondition: aCondition
	| sequence |
	sequence := Sequence source: self target: anElement condition: aCondition.
	self addOutgoingFlow: sequence.
	anElement addIncomingFlow: sequence.
	