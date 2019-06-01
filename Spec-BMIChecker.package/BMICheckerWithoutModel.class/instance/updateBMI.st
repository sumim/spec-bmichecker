updating
updateBMI
	| bmiValue fieldColor |
	bmiText text: (self weight / (self height ** 2) * 1.0e4 printShowingDecimalPlaces: 1).
	bmiValue := bmiText text asNumber.
	fieldColor := true caseOf:
			{[ bmiValue < 18.5 ] -> [ Color white ].
			[ bmiValue < 20.0 ] -> [ Color yellow ].
			[ bmiValue < 30.0 ] -> [ Color orange ]}
		otherwise: [ Color red ].
	bmiText textArea color: fieldColor