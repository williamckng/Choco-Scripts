$ErrorActionPreference = 'Stop'

$softwareName = 'Microsoft.UI.Xaml.2.8'
$fileName     = "Microsoft.UI.Xaml.2.8.appx"
$fileLocation = "\\192.168.100.1\DS-Create$\Applications\$softwareName"

Add-AppxProvisionedPackage -Online -PackagePath "$fileLocation\$fileName" -SkipLicense -Regions All