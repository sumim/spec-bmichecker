initialization
initializePresenter
	super initializePresenter.
	heightText whenTextChanged: [ :newText | announcingObject height: newText ].
	weightText whenTextChanged: [ :newText | announcingObject weight: newText ].
	bmiText
		whenTextChanged: [ :newText | 
			| bmiValue fieldColor |
			announcingObject bmi: newText.
			bmiValue := announcingObject bmi ifNil: [ 0 ].
			fieldColor := true caseOf:
					{[ bmiValue < 18.5 ] -> [ Color white ].
					[ bmiValue < 20.0 ] -> [ Color yellow ].
					[ bmiValue < 30.0 ] -> [ Color orange ]}
				otherwise: [ Color red ].
			bmiText textArea color: fieldColor ]