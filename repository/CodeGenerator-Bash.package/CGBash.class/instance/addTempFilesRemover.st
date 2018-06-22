accessing - utilities
addTempFilesRemover

	self codeStream nextPutAll: 'echo "Remove temp files..."
for run in {0..1}
do
	rm -v "$outputFile.t$run"
done
echo "ok"
'