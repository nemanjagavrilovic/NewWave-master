initialization
testExclusiveGateway
	| bh se |
	bh := BehaviorHandler new.
	se := bh behaviors at: #ExclusiveGateway.
	self assert: se className equals: 'ExclusiveGatewayBehavior'.