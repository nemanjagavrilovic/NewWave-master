initialization
testTaskEvent
	| bh se |
	bh := BehaviorHandler new.
	se := bh behaviors at: #BaseTask.
	self assert: se className equals: 'TaskEventBehavior'.