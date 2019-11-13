initialization
initialize 
	super initialize.
	tasks := OrderedCollection new.
	gates := OrderedCollection new.
	events := OrderedCollection new.
	view := RTView new.