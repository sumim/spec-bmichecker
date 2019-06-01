tests
test01calculateBMI
	| model |
	model := BMICheckerModel new
		height: 180;
		weight: 90;
		yourself.
	self assert: model bmi equals: 90 / (1.8 ** 2).
	self
		assert:
			(model
				bmi: 25;
				weight)
		equals: 81.0