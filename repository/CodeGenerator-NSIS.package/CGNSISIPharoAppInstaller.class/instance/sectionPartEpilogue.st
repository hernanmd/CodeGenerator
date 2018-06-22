code-templates
sectionPartEpilogue
	^ '
  
SectionEnd

Section "Image and Sources" Section2
  SetOutPath "$INSTDIR"

  File {{product}}-${VERSION}.changes
  File {{product}}-${VERSION}.image
  File "pharo-vm\{{sourcesFileName}}"  
  
SectionEnd
'