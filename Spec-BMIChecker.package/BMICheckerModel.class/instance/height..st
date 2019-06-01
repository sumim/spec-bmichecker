accessing
height: anObject
	| oldValue |
	oldValue := height.
	height := [anObject asNumber] ifError: [ bmi := nil ].
	oldValue ~= height ifTrue: [self valueChanged]