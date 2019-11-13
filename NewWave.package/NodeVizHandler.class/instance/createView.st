initialization
createView

	| v eventShapes taskShapes gateShapes elements elements2 elements3 lineShape |
	v := RTView new.
	eventShapes := (RTEllipse new size: 100; color: Color red trans) + RTLabel.
	taskShapes := (RTRoundedBox new size: 100; color: Color orange trans; borderRadius: 15) + RTLabel.
	gateShapes := (RTPolygon new vertices: (Array with: 200 @ 0 with: 300 @ 100 with: 200 @ 200 with: 100 @ 100)) + RTLabel.
	gateShapes := (RTPolygon new vertices: (Array with: 200 @ 0 with: 300 @ 100 with: 200 @ 200 with: 100 @ 100)) + RTLabel.
	gateShapes := (RTPolygon new vertices: (Array with: 0 @ 0 with: 70 @ 50 with: 0 @ 100 with: -70 @ 50)) + RTLabel.
	
	gateShapes color: Color blue trans.
	
	elements := taskShapes elementsOn: tasks.
	elements2 := gateShapes elementsOn: gates.
	elements3 := eventShapes elementsOn: events.
	
	v addAll: elements.
	v addAll: elements2.
	v addAll: elements3.
	
	elements @ RTPopup @ RTDraggable.
	elements2 @ RTPopup @ RTDraggable.
	elements3 @ RTPopup @ RTDraggable.
	
	lineShape := (RTLine new
				attachPoint: RTShorterDistanceAttachPoint new;
				color: Color veryDarkGray)
			+
					(RTSimpleArrowHead new
						attachPoint: RTShorterDistanceAttachPoint new;
						color: Color veryDarkGray).
	

	RTEdgeBuilder new
		view: v;
		objects: nodes;
		shape: lineShape;
		connectFrom: #yourself 
		toAll: [  
		:e |
			e logCr.
			nodes := OrderedCollection new. 
			e outgoingFlows ifNotEmpty: [ 
				e outgoingFlows do: [ :h | 
					nodes add: h targetRef  ].
				nodes.
			].
		
		].
		

	RTHorizontalTreeLayout on: v elements.
	view := v