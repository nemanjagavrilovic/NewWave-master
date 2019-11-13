initialization
createMaDescriptions
	| madesc |
	^ self eximplify collect: [ :each |
		| el |
		madesc := NewWaveDODescriptionSelector new.
		el := madesc descriptionDictionary at: each varType.
		el
			accessor: each varName;
			label: each varValue;
			priority: 10.
	].