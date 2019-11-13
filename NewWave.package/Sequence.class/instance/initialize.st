initialization
initialize

	super initialize.
	self srcFetched: false.
	self targetFetched: false.
	outgoing := OrderedCollection new.
	incoming := OrderedCollection new.