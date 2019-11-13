initialization
addIncoming: anIncoming addOutgoing: anOutgoing
	^ self addIncomingFlow: anIncoming; addOutgoingFlow: anOutgoing;
	yourself