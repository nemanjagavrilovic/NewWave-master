as yet unclassified
initialNode: node engine: aEngine
	| fh |
	fh := FlowHandler new.
	fh node: node.
	^ self new 
		flowHandler: fh;
		engine: aEngine;
		yourself