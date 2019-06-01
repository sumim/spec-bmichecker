accessing
bmi
	^ self assureNumStr: bmiText ifNotPut: self defaultBMI asNumber