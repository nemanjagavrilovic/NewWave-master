initialization
testTaskEndEvent
	| bh se |
	bh := BehaviorHandler new.
	se := bh behaviors at: #EndEvent.
	self assert: se className equals: 'EndEventBehavior'.