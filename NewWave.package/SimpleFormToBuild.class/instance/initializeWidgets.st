initialization
initializeWidgets
	
	lblName := self newLabel label: 'Name:'.
	txtName := self newTextInput.

	lblLastName := self newLabel label: 'Last Name:'.
	txtLastName := self newTextInput.
	
	self focusOrder 
		add: lblName;
		add: txtName;
		add: lblLastName;
		add: txtLastName.
	