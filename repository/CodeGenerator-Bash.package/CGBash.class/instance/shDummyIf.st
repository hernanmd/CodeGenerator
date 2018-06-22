accessing - utilities
shDummyIf

	^ 'if [[ "$aVar" == "aValue" ]]; then
			printf "%s" "1" >> "$outputFile" 2>&1
		fi'