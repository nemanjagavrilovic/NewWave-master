accessing
initialize
	super initialize.
	self joinHandler: (JoinHandler context: self).
	self subExecutors: OrderedCollection new.
	self engineAnnouncer: Announcer new.
	workList := WaveWorkList new.
	activations := Dictionary new.
	pluginData := Dictionary new
	"scheduler := TaskScheduler new."
	"scheduler start."