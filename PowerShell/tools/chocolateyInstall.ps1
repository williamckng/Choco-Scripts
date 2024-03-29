$ErrorActionPreference = 'Stop'

# Localize Chocolatey environment variables
$chocolateyPackageVersion = $env:chocolateyPackageVersion
$chocolateyPackageName = $env:chocolateyPackageName

# Define other local variables
$softwareName = 'PowerShell'
$fileName = "$softwareName-$chocolateyPackageVersion-win-x64.msi"
$fileLocation = '\\192.168.100.1\DS-Create$\Applications'

# Define source location
$file = "$fileLocation\Microsoft $softwareName\$fileName"

# Define install parameters
$installLog = "$env:TEMP\$chocolateyPackageName.$chocolateyPackageVersion.MsiInstall.log"
$silentArgs = "/passive /norestart /l*v `"$installLog`""

$packageArgs = @{
  packageName    = $chocolateyPackageName
  fileType       = 'MSI'
  file           = $file
  softwareName   = $softwareName
  silentArgs     = $silentArgs
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs
