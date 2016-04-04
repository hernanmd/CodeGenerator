accessing - utilities
shCaseOptionGenerator: aCollection
	" Private - Take aCollection of associations and answer a <String> with case option, i.e. : 

	'C)'
		if [[ '$aVar' == 'aValue2' ]]; then
			printf '%s' '2' >> '$outputFile' 2>&1
		fi
		;;

	"
	^ String streamContents: [ : s | 
		aCollection do: [ : caseString | 
			s 
				nextPutAll: '"' , caseString , '")';
				crtab; tab;
				nextPutAll: self shDummyIf;
				crtab; tab;
				nextPutAll: ';;' ] ]