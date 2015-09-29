code-templates
templateControlPanel

	^ '###################################
# Infos for Software control panel
###################################

VIProductVersion "${VERSION}"
VIAddVersionKey ProductName     "${APP_NAME}"
VIAddVersionKey ProductVersion  "${VERSION}"
VIAddVersionKey CompanyName     "${PROVIDER}"
VIAddVersionKey CompanyWebsite  "${URL}"
VIAddVersionKey FileVersion     ""
VIAddVersionKey FileDescription ""
VIAddVersionKey LegalCopyright  "(c) ${YEAR} by ${PROVIDER}"
'