accessing
stopEngine
	"scheduler stop."
	pluginData do: [ :plugin | plugin stop ].
	"I am force stopping all the workers in the engine."
	mainExecutor workers valuesDo: [ :d | d stop ].