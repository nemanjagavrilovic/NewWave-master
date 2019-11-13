initialization
preparePartialNew: s
| templateString |
templateString := String new writeStream.
templateString nextPutAll:
'
<div class="form-group">
	<label for="{{ label }}">{{ label }}</label>
'.
templateString nextPutAll: (self determineComponent: (s at: 'type')).
templateString nextPutAll: '</div>'.
^ templateString contents asMustacheTemplate value: { 
	'label' -> (s at: 'label').
} asDictionary.
