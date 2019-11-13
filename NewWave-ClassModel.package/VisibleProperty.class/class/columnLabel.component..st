as yet unclassified
columnLabel: aColumnLabel component: aComponent

	^ self new 
		columnLabel: aColumnLabel;
		displayFormat: 'text';
		representative: false;
		autoGo: false;
		disabled: false;
		default: false;
		label: aColumnLabel;
		component: aComponent;
		visible: true;
		yourself