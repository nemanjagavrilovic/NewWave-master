accessing
rici
	"announcer subscribe: (ExampleAnnouncer where: [ :ann | ann parameter = 'reci' ])
	do: [ 
		:ann | ann logCr. 'pera' logCr.
	]."

	announcer subscribe: WaveAnnouncer
		do: [ :ann | ann parameter logCr. 'pera' logCr ].

"
Ovako se pokrece
| e |
e := ExampleClass new.
e rici.
e announcer announce: (ExampleAnnouncer with: 'reci')."