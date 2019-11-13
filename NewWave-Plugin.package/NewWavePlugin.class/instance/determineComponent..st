initialization
determineComponent: aComponent
	aComponent logCr.
	aComponent = 'TextFieldComponent' ifTrue: [ 
	^ '<input type="text" class="form-control" id="{{ label }}" name="{{ label }}" placeholder="Enter {{ label }}">'].
	aComponent = 'NumberComponent' ifTrue: [ 
	^ '<input type="number" class="form-control" id="{{ label }}" name="{{ label }}" placeholder="Enter {{ label }}">'].