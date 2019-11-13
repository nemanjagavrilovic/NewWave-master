initialization
createMaDescriptions
	| madesc |
	^ do properties collect: [ :each |
		| el |
		madesc := NewWaveDODescriptionSelector new.
		el := madesc descriptionDictionary at: each varType.
		el
			accessor: (each varName) asSymbol;
			label: each varValue;
			priority: 10.
	].