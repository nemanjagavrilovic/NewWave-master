initialization
generateInstanceVariables
	| temp |
	temp := String new.
	do properties do: [ :el | temp := temp, el varName asString, ' ' ].
	^ temp