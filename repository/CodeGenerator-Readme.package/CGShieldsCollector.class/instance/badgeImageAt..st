accessing
badgeImageAt: imgURLString

	^ [ ZnEasy getPng: (imgURLString , '.png') ]
		on: ZnUnexpectedContentType 
		do: [ : ex | 
			self trace: imgURLString , ' is not a PNG image and could not be displayed in README generator'. 
			nil ]
	
