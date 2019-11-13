initialization
displayForm: aRequest
	|forma x s templateString partial parts p |
	x := 
'{
  "name": "Worker",
  "formProperties": [
    {
      "name": "firstName",
      "type": "text",
      "label": "First Name"
    },
    {
      "name": "lastName",
      "type": "text",
      "label": "Last Name"
    }
  ]
}'.
	s := NeoJSONReader fromString: x.
	templateString := String new writeStream.
	templateString nextPutAll: self getStyle.
	templateString nextPutAll: self baseTemplateNew.
	partial := String new writeStream.
	parts := Dictionary new.
	(s at: 'formProperties') do: [
		:el | 
		| tmp |
		tmp := self preparePartialNew: el.
		parts at: (el at: 'name') put: tmp.
		partial nextPutAll: '{{> '.
		partial nextPutAll: (el at: 'name').
		partial nextPutAll: '}}'.
	].
	parts logCr.
	partial contents logCr.
	p := partial contents asMustacheTemplate value: '' asDictionary partials: parts.
	^ templateString contents asMustacheTemplate value: (NeoJSONReader 
         fromString: x) partials: {'partial' -> p } asDictionary.
	"^ templateString contents asMustacheTemplate value: (NeoJSONReader 
         fromString: x) partials: {'partial' -> p } asDictionary."
		