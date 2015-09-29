code-templates
templateMUISettings

	^ '###################################
# Modern User Interface settings
###################################
; Other Definitions
!define MUI_ICON   "{{iconFile}}"                              ; icon for the installer

!define MUI_HEADERIMAGE
# !define MUI_HEADERIMAGE_BITMAP "header.bmp"                 ; optional
!define MUI_WELCOMEFINISHPAGE_BITMAP "{{welcomeBmpFile}}"          ; optional
!define MUI_FINISHPAGE_NOAUTOCLOSE                          ; Do not automatically jump to the finish page, to allow the user to check the install log.
!define MUI_UNFINISHPAGE_NOAUTOCLOSE                        ; Do not automatically jump to the finish page, to allow the user to check the uninstall log.
!define MUI_FINISHPAGE_RUN "$INSTDIR\${LAUNCHER}"           ; allows to run the application after install
'