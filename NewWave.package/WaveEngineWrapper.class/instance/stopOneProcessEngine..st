accessing
stopOneProcessEngine: aKey
	| processEngine |
	processEngine := processDict at: aKey ifAbsent: [ 'Can''t find process engine' ].
	processEngine stop.