initialization
determineComponent: aComponent
	aComponent logCr.
	aComponent = 'text' ifTrue: [ 
	^ '<input type="text" class="form-control" id="{{ label }}" name="{{ label }}" placeholder="Enter {{ label }}">'].
	aComponent = 'number' ifTrue: [ 
	^ '<input type="number" class="form-control" id="{{ label }}" name="{{ label }}" placeholder="Enter {{ label }}">'].