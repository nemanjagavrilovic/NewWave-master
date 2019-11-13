adding
addToRunning: activation
	"Proveriti da li je vec aktivacija pocela, ako je pocela podigni error"
	"running add: activation"
	activation activated: true.
	running indexOf: activation ifAbsent: [ running add: activation ].
	"Treba zabaleziti za istoriju.... noteRunOf: anActivation in: self"
	