initialization
createClassContainer
	| container |
	container := NewWaveDOClassDescription new.
	container className: do class name. 
	container addAllToProps: self eximplify.
	^ container