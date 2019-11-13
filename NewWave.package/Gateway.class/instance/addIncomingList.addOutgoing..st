adding
addIncomingList: anIncomingList addOutgoing: anOutgoing
	self incomingFlows addAll: anIncomingList.
	self addOutgoingFlow: anOutgoing;
	yourself