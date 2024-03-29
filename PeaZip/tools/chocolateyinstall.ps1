$ErrorActionPreference = 'Stop'

# Localize Chocolatey environment variables
$chocolateyPackageVersion = $env:chocolateyPackageVersion
$chocolateyPackageName = $env:chocolateyPackageName

# Define other local variables
$softwareName = 'PeaZip'
$fileLocation = '\\192.168.100.1\DS-Create$\Applications'
$fileName     = "$softwareName-$chocolateyPackageVersion.WIN64.exe"
$otherParams  = '/MERGETASKS="!desktopicon"'

# Define source location
$file = "$fileLocation\$softwareName\$fileName"

# Define install parameters
$installLog = "$env:TEMP\$chocolateyPackageName.$chocolateyPackageVersion.Install.log"
$silentArgs = "/SILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG=`"$installLog`" $otherParams"

$packageArgs = @{
  packageName    = $chocolateyPackageName
  softwareName   = $softwareName
  fileType       = 'exe'
  file           = $file
  silentArgs     = $silentArgs
  validExitCodes = @(0)
}

Install-ChocolateyInstallPackage @packageArgs
