accessing - utilities
shCaseGenerator

	^ 'case "$myVar" in
	"A")
		if [[ "$aVar" == "Value1" ]]; then
			printf "%s" "1" >> "$outputFile" 2>&1
		fi
      ;;
	"C")
		if [[ "$aVar" == "aValue2" ]]; then
			printf "%s" "2" >> "$outputFile" 2>&1
		fi
		;;
	*)
		printf "%s" "0" >> "$outputFile" 2>&1
	esac
'