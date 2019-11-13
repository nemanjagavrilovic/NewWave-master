initialization
createMaContainer
	| maContainer |
	maContainer := MAPriorityContainer new.
	maContainer propertyAt: #label put: do class name. 
	maContainer addAll: self createMaDescriptions.
	^ maContainer