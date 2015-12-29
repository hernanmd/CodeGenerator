code-templates
templateSectionDescription

	^ '###################################
# Section description
###################################
LangString DESC_Section1 ${LANG_ENGLISH} "The pharo virtual machine and components"
LangString DESC_Section2 ${LANG_ENGLISH} "The pharo image and sources"
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${Section1} $(DESC_Section1)
  !insertmacro MUI_DESCRIPTION_TEXT ${Section2} $(DESC_Section2)
!insertmacro MUI_FUNCTION_DESCRIPTION_END
'