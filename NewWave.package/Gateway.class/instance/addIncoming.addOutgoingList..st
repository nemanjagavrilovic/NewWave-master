adding
addIncoming: anIncoming addOutgoingList: anOutgoingList
	self addIncomingFlow: anIncoming.
	self outgoingFlows addAll: anOutgoingList;
	yourself