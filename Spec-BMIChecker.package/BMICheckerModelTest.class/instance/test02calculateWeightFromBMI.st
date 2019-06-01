tests
test02calculateWeightFromBMI
	| model |
	model := BMICheckerModel new
		height: 180;
		weight: 90;
		yourself.
	self
		assert:
			(model
				bmi: 25;
				weight)
		equals: 81.0