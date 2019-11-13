initialization
createEntity
| newClass x |
	newClass := Object subclass: do className1 instanceVariableNames: self generateInstanceVariables classVariableNames: '' package: 'NewWaveWebApp'.
	"x := newClass new."
	^ self addValues: newClass new.
	"^ newClass."