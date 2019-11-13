initialization
initialize 
	super initialize.
	self descriptionDictionary: {
			('ByteString' -> MAStringDescription new) .
			('SmallInteger' -> MANumberDescription new). } asDictionary 