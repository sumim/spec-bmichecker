private 
assureNumStr: presenter ifNotPut: defaultNum
	| string |
	string := presenter text.
	(string isEmpty or: [ string first isDigit not ]) ifTrue: [ presenter text: (string := defaultNum asString) ].
	^ string asNumber