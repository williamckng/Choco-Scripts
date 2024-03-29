$ErrorActionPreference = 'Stop'

$softwareName = 'Microsoft Windows Terminal'
$packageVersion = "$env:chocolateyPackageVersion.0"
$fileName     = "Microsoft.WindowsTerminal_$($packageVersion)_8wekyb3d8bbwe.msixbundle"
$fileLocation = "\\192.168.100.1\DS-Create$\Applications\$softwareName"

Add-AppxProvisionedPackage -Online -PackagePath "$fileLocation\$fileName" -SkipLicense -Regions all
