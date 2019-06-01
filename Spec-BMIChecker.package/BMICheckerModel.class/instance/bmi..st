accessing
bmi: anObject
	bmi := [ anObject asNumber ] ifError: [ nil ].
	height
		ifNotNil: [ self weight: ([ bmi * (height / 100.0 ** 2) ] ifError: [ nil ]) ]
		ifNil: [ self height: ([ (weight / bmi) sqrt * 100.0 ] ifError: [ nil ]) ]