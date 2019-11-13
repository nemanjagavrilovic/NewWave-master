baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ "Dependencies"
			self taskIt: spec.
			self teapot: spec.
			"self scheduler: spec."
			self scheduler2: spec.

			"Packages"
			spec package: 'NewWave' with: [spec requires: #(TaskIt Scheduler)].
			spec
				package: 'NewWave-Server'
				with: [ spec requires: #(NewWave Teapot) ].
			spec package: 'NewWave-Plugin'.
			"Groups"
			spec group: 'Core' with: #(NewWave).
			spec group: 'TeapotServer' with: #(Core Teapot).
			spec
				group: 'All'
				with: #(Core TeapotServer 'NewWave-Plugin') ]