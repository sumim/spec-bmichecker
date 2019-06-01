initialization
initializeWidgets
	heightLabel := self newLabel label: 'Height:'.
	heightText := self newTextInput
		ghostText: self defaultHeight;
		whenBuiltDo: [ :ann | ann widget acceptOnFocusChange: true ];
		yourself.
	heightUnit := self newLabel label: 'cm'.
	weightLabel := self newLabel label: 'Weight:'.
	weightText := self newTextInput
		ghostText: self defaultWeight;
		whenBuiltDo: [ :ann | ann widget acceptOnFocusChange: true ];
		yourself.
	weightUnit := self newLabel label: 'kg'.
	bmiLabel := self newLabel label: 'BMI:'.
	bmiText := self newTextInput
		whenBuiltDo: [ :ann | ann widget acceptOnFocusChange: true ];
		yourself.
	self focusOrder addAll: {heightText. weightText. bmiText}