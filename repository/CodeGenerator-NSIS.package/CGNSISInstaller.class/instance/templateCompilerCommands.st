code-templates
templateCompilerCommands

	^ '###################################
# Compiler commands
###################################
Name        "${PRODUCT}"
Caption		"${PRODUCT}"
OutFile      "${OUTPUT_TARGET}"
InstallDir   "${TARGET_DIR}"                             ;Default installation 
InstallDirRegKey HKCU "${REG_KEY}" ""                    ;Get installation from registry if available
RequestExecutionLevel user                               ;Administrator execution level access is not needed
BrandingText "${APP_NAME} Version ${VERSION}"            ;brand the installer so now NSIS stuff is shown
XPStyle      on
CRCCheck     on                                          ;do a CRC check
SetOverwrite on                                          ;force overwrite
SetCompress force                                        ;force compression
'