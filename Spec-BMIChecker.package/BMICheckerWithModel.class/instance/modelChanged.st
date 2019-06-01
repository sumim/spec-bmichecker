initialization
modelChanged
	| newHeight newWeight newBMI |
	newHeight := announcingObject height
		ifNil: [ '' ]
		ifNotNil: [ :val | val printShowingDecimalPlaces: 1 ].
	newWeight := announcingObject weight
		ifNil: [ '' ]
		ifNotNil: [ :val | val printShowingDecimalPlaces: 1 ].
	newBMI := announcingObject bmi
		ifNil: [ '' ]
		ifNotNil: [ :val | val printShowingDecimalPlaces: 1 ].
		
	heightText text ~= newHeight ifTrue: [ heightText text: newHeight ].
	weightText text ~= newWeight ifTrue: [ weightText text: newWeight ].
	bmiText text ~= newBMI ifTrue: [ bmiText text: newBMI ]