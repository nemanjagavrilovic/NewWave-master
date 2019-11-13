initialization
displayFieldUserForm: aRequest
	|forma s templateString |
	forma := (ZnEasy get: 'http://localhost:8081/events') entity string.
	s := NeoJSONReader fromString: forma.
	s = 'Empty' ifTrue: [ ^ 'Nista' ].
	templateString := String new writeStream.
	templateString nextPutAll: self getStyle.
	templateString nextPutAll: self baseTemplate.
	^ templateString contents asMustacheTemplate value: (NeoJSONReader 
         fromString: forma).
		