$ErrorActionPreference = 'Stop'

# Localize Chocolatey environment variables
$chocolateyPackageVersion = $env:chocolateyPackageVersion
$chocolateyPackageName = $env:chocolateyPackageName

# Define other local variables
$softwareName = 'Microsoft VCRedist'
$fileLocation = '\\192.168.100.1\DS-Create$\Applications'
$fileName = "VC_redist.x64.exe"

# Define source location
$file = "$fileLocation\$softwareName\$fileName"

# Define install parameters
$silentArgs = '/passive /norestart'

$packageArgs = @{
  packageName    = $ChocolateyPackageName
  fileType       = 'exe'
  file           = $file
  softwareName   = $softwareName
  silentArgs     = $silentArgs
  validExitCodes = @(0)
}

Install-ChocolateyInstallPackage @packageArgs
