accessing
getNextElement
	" The idea here is to go through the sequences of the nodes. Every  node knows what is his outgoing flow. So I set the target node to be executed, and return source node. When there are no more outgoing flows I return the node itself.
	As the matter of precaution I added the NullNode, which is actually here to avoid ifNil checks."
	| seq tmp |
	tmp := node.
	node outgoingFlows 
	ifNotEmpty: [ 
		seq := node outgoingFlows first.
		sequences add: seq.
		seq ifNil: [ self error: 'Outgoing seq in flow handler is Nil. This should not happend.'  ] 
			ifNotNil: [ self node: seq targetRef. self currSeq: seq. ^ seq sourceRef. ]. 
	] 
	ifEmpty: [ 
		self node: NullNode new.
		^ tmp.
	].
	
	