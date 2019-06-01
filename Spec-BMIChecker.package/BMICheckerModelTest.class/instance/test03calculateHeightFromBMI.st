tests
test03calculateHeightFromBMI
	| model |
	model := BMICheckerModel new
		weight: 81;
		yourself.
	self
		assert:
			(model
				bmi: 25;
				height)
		equals: 180.0