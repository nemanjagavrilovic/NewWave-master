initialization
initialize
	super initialize.
	self behaviors:  {
			(#StartEvent -> StartEventBehavior new) .
			(#BaseTask -> TaskEventBehavior new).
			(#EndEvent -> EndEventBehavior new).
			(#ExclusiveGateway -> ExclusiveGatewayBehavior new).
			(#ParallelGateway -> ParallelGatewayBehavior new).
			(#ParallelJoin -> ParallelJoinBehavior new).
			(#NullNode -> NullNodeBehavior new).
			(#CustomTask -> CustomTaskEventBehavior new).
			(#FieldUserTask -> FieldUserTaskEventBehavior new).
			(#UserTask -> UserTaskEventBehavior new).
			(#IntermediateCatchEvent -> IntermediateCatchEventBehavior new).
			(#BoundaryEvent -> BoundaryEventBehavior new).} asDictionary 