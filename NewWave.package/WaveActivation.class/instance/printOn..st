accessing
printOn: aStream
	"super printOn: aStream."
	aStream
		nextPutAll: 'Act(';
		nextPutAll: self node description;
		nextPutAll: ')'.