tests
testSequenceCreationWithCondition
	| s a b |
	a := BaseTask new.
	b := BaseTask new.
	s := Sequence source: a target: b condition: [:x | x = true]. 
	self assert: (s condition value: true) equals: true. 