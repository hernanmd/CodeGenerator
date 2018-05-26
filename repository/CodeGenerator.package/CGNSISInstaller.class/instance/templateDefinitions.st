code-templates
templateDefinitions

	^ '###################################
# Definitions
###################################
; General definitions
!define /date TIMESTAMP "%Y-%m-%d-%H-%M-%S"
!define PROVIDER "{{identity}}"
!define PRODUCT  "{{product}}"
!define PRODUCT_LOWERCASE "{{productLowercase}}"
!define URL      "{{url}}"
!define YEAR     "{{year}}"
!define LAUNCHER "{{launcher}}.exe"
!define LICENSE_EN "{{licenseEnFileName}}.txt"
!define VERSION "{{version}}"
!define RESDIR "{{resourcesDir}}"

# This is the size (in kB) of all the files copied into "Program Files"
# !define INSTALLSIZE 184000

!define APP_NAME "${PRODUCT}"
!define REG_KEY  "SOFTWARE\${APP_NAME}"
!define MGROUP   "${PRODUCT}"
!define UNINSTALLER_NAME "Uninstall-${PRODUCT}"
!define REG_UNINSTALL "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}"

; SOURCE Definitions
!define SETUP_NAME "setup_${PRODUCT_LOWERCASE}_${VERSION}.exe"
!define OUTPUT_TARGET "${SETUP_NAME}" 

; TARGET Definitions
!define TARGET_DIR "$LOCALAPPDATA\${PRODUCT}"
; User with admin rights
; !define TARGET_DIR "$PROGRAMFILES\${PRODUCT}"
'