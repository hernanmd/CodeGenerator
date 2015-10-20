accessing - csv
shVRemoveTempFiles

	^ 'echo "Remove temp files..."
for run in {0..1}
do
	rm -v "$outputFile.t$run"
done
echo "ok"
'