initialization
displayForm: aRequest
	|forma s templateString partial parts p |
	forma := (ZnEasy get: 'http://localhost:8081/events') entity string.
	s := NeoJSONReader fromString: forma.
	s = 'Empty' ifTrue: [ ^ 'Nista' ].
	templateString := String new writeStream.
	templateString nextPutAll: self getStyle.
	templateString nextPutAll: self baseTemplateNew.
	partial := '<input type="text" class="form-control" id="{{ label }}" name="{{ name }}" placeholder="Enter {{ label }}">'.
	partial := String new writeStream.
	parts := Dictionary new.
	(s at: 'visibleElements') do: [
		:el | 
		| tmp |
		tmp := self preparePartialNew: el.
		parts at: (el at: 'columnLabel') put: tmp.
		partial nextPutAll: '{{> '.
		partial nextPutAll: (el at: 'columnLabel').
		partial nextPutAll: '}}'.
	].
	parts logCr.
	partial contents logCr.
	p := partial contents asMustacheTemplate value: '' asDictionary partials: parts.
	^ templateString contents asMustacheTemplate value: (NeoJSONReader 
         fromString: forma) partials: {'partial' -> p } asDictionary.
		