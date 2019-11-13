initialization
testInitialize
	| bh se |
	bh := BehaviorHandler new.
	se := bh behaviors at: #StartEvent.
	self assert: se className equals: 'StartEventBehavior'.