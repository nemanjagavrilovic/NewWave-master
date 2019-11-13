initialization
preparePartial

^'{{#wrapped}} {{tekst}} {{/wrapped}}' asMustacheTemplate value: { 
	'tekst' -> '{{ component }}'.
	'label' -> '{{ label }}'.
	'wrapped' -> [ :render| self determineComponent: render value ]  
} asDictionary.