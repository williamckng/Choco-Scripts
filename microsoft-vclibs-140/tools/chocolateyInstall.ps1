$ErrorActionPreference = 'Stop'

$softwareName = 'Microsoft.VCLibs.140.00'
$fileName     = "Microsoft.VCLibs.x64.14.00.Desktop.appx"
$fileLocation = "\\192.168.100.1\DS-Create$\Applications\$softwareName"

Add-AppxProvisionedPackage -Online -PackagePath "$fileLocation\$fileName" -SkipLicense -Regions All
