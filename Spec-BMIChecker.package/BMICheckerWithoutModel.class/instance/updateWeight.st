updating
updateWeight
	weightText text: (self bmi * (self height ** 2) / 1.0e4 printShowingDecimalPlaces: 1).
	self updateBMI