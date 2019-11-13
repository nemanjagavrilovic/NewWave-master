running
activationForNode: aNode
	| activation |
	activation := self activations at: aNode ifAbsent: [ self newActivationForNode: aNode ].
	" Treba dodati proveru o workListi i o tome sta se izvrsava, odnosno ako je vec dodata jednom aktivacija ne bi je trebalo dodavati drugi put."
	"self workList addToRunning: activation."
	^ activation.
	