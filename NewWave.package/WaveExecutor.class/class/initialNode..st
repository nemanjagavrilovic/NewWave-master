as yet unclassified
initialNode: node
	| fh |
	fh := FlowHandler new.
	fh node: node.
	^ self new 
		flowHandler: fh;
		yourself