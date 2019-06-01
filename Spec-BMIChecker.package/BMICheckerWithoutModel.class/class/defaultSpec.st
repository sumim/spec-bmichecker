specs
defaultSpec
	<spec: #default>
	| fontWidth labelsWidth unitsWidth rowHeight |
	fontWidth := StandardFonts defaultFont widthOfString: 'M'.
	labelsWidth := fontWidth * 5.
	unitsWidth := fontWidth * 3.
	rowHeight := self inputTextHeight.
	^ SpecLayout composed
		newColumn: [ :col | 
			col
				newRow: [ :row | 
					row add: #heightLabel right: labelsWidth.
					row add: #heightText.
					row add: #heightUnit right: unitsWidth. ]
				height: rowHeight.
			col
				newRow: [ :row | 
					row add: #weightLabel right: labelsWidth.
					row add: #weightText.
					row add: #weightUnit right: unitsWidth. ]
				height: rowHeight.
			col
				newRow: [ :row | 
					row add: #bmiLabel right: labelsWidth.
					row add: #bmiText ]
				height: rowHeight .
			col newRow: [ :row | ]
			];
		yourself