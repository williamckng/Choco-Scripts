$ErrorActionPreference = 'Stop'

# Localize Chocolatey environment variables
$chocolateyPackageVersion = $env:chocolateyPackageVersion
$chocolateyPackageName = $env:chocolateyPackageName

# Define other local variables
$softwareName = 'Microsoft Windows Desktop Runtime'
$fileName = "windowsdesktop-runtime-$chocolateyPackageVersion-win-x64.exe"
$fileLocation = '\\192.168.100.1\DS-Create$\Applications'

# Define source location
$file = "$fileLocation\$softwareName\$fileName"

# Define install parameters
$installLog = "$env:TEMP\$chocolateyPackageName.$chocolateyPackageVersion.MsiInstall.log"
$silentArgs = "/install /passive /norestart /log $installLog"

# Define Chocolatey parameter hash table
$packageArgs = @{
  packageName    = $ChocolateyPackageName
  fileType       = 'exe'
  file           = $file
  softwareName   = $softwareName
  silentArgs     = $silentArgs
  validExitCodes = @(0)
}

Install-ChocolateyInstallPackage @packageArgs