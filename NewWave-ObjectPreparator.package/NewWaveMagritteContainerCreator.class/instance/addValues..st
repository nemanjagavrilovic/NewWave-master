initialization
addValues: anInstanceOfEntity
	do properties do: [ :el | anInstanceOfEntity instVarNamed: el varName put: el varValue ].
	^ anInstanceOfEntity.