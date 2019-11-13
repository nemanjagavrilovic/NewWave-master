running
newActivationForNode: aNode
	| activation |
	(self activations includesKey: aNode) ifTrue: [ self error: 'Activation already exists!'].
	activation := self activations at: aNode put: (WaveActivation node: aNode executor: self).
	"engine logNewActivation: activation on: self forNode: aNode."
	^ activation.