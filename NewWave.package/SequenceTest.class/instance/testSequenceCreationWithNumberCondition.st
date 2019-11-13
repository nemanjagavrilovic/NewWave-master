tests
testSequenceCreationWithNumberCondition
	| s a b |
	a := BaseTask new.
	b := BaseTask new.
	s := Sequence source: a target: b condition: [:x | x = 200].
	self assert: (s condition value: 200) equals: true.
