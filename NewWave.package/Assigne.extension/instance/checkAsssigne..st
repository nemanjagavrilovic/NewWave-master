*NewWave
checkAsssigne: elemToExecute
(elemToExecute assigne user isKindOf: NullNode ) 
		ifTrue:['Not assigned' logCr.] 
		ifFalse:[
			elemToExecute assigne user username logCr.
		].