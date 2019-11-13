initialization
preparePartialNew: s
| templateString |
templateString := String new writeStream.
templateString nextPutAll:
'
<div class="form-group">
	<label for="{{ label }}">{{ label }}</label>
'.
templateString nextPutAll: (self determineComponent: (s at: 'component')).
templateString nextPutAll: '</div>'.
^ templateString contents asMustacheTemplate value: { 
	'label' -> (s at: 'columnLabel').
} asDictionary.
