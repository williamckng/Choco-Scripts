$ErrorActionPreference = 'Stop'

$softwareName = 'Microsoft.UI.Xaml.2.7'
$fileName     = "Microsoft.UI.Xaml.2.7.x64.appx"
$fileLocation = "\\192.168.100.1\DS-Create$\Applications\$softwareName"

# Add-AppxPackage -Path "$fileLocation\$fileName"
Add-AppxProvisionedPackage -Online -PackagePath "$fileLocation\$fileName" -SkipLicense -Regions All
