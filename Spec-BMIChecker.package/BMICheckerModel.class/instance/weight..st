accessing
weight: anObject
	| oldValue |
	oldValue := weight.
	weight := [anObject asNumber] ifError: [ bmi := nil ].
	oldValue ~= weight ifTrue: [self valueChanged]