specs
defaultSpec

	<spec: #default>

	| fontWidth labelsWidth rowHeight |
	fontWidth := (StandardFonts defaultFont widthOfString: 'M').
	labelsWidth := fontWidth * 8.
	rowHeight := self inputTextHeight.
	
	^ SpecLayout composed
		newColumn: [ :col | 

			col newRow: [ :row | 
				row add: #lblName right: labelsWidth.
				row add: #txtName ]
			height: rowHeight.
		
			col newRow: [ :row | 
				row add: #lblLastName right: labelsWidth.
				row add: #txtLastName ]
			height: rowHeight.

		"fill the rest of the space"
		col newRow: [ :row |  ] ]; 
			
		yourself.	