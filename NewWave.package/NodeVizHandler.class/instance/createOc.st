initialization
createOc

nodes do: [ :each | 
	each basetype = #Event ifTrue: [events add: each].
	each basetype = #Activity ifTrue: [tasks add: each].
	each basetype = #Gateway ifTrue: [gates add: each].
].

self createView.