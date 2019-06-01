accessing
bmi
	^ [bmi := weight / (height / 100.0 ** 2)] ifError: [ bmi ]