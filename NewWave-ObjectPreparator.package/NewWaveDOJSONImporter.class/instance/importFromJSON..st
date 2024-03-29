accessing
importFromJSON: json

| t |
t := 	(NeoJSONReader on: json readStream) 
		mapAllInstVarsFor: NewWaveDOPropertyDescription ;
		mapAllInstVarsFor: NewWaveDOClassDescription;
		for: #ArrayOfNewWaveDOPropertyDescription customDo: [ :mapping |
			mapping listOfElementSchema: NewWaveDOPropertyDescription  ];
		for: NewWaveDOClassDescription do: [ :mapping | 
			(mapping mapInstVar: #properties) valueSchema: #ArrayOfNewWaveDOPropertyDescription.
		];
		nextAs: NewWaveDOClassDescription.
^ t.