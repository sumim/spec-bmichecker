initialization
initializePresenter
	heightText whenTextIsAccepted: [ weightText text ifNotEmpty: [ self updateBMI ] ].
	weightText whenTextIsAccepted: [ heightText text ifNotEmpty: [ self updateBMI ] ].
	bmiText whenTextIsAccepted: [
		heightText text
			ifNotEmpty: [ self updateWeight ]
			ifEmpty: [ weightText text ifNotEmpty: [ self updateHeight ] ] ]