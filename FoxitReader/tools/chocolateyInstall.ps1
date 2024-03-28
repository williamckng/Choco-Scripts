$ErrorActionPreference = 'Stop'

# Localize Chocolatey environment variables
$chocolateyPackageVersion = $env:chocolateyPackageVersion
$chocolateyPackageName = $env:chocolateyPackageName

# Define other local variables
$softwareName = 'Foxit PDF Reader'
$fileName = 'FoxitPDFReader20241_L10N_Setup.msi'
$fileLocation = '\\192.168.100.1\DS-Create$\Applications'
$msiParams = "TRANSFORMS=`"$fileLocation\$softwareName\FoxitPDFReader20241_L10N_Setup_FCT.mst`""

# Define source location
$file = "$fileLocation\$softwareName\$fileName"

# Define install parameters
$installLog = "$env:TEMP\$chocolateyPackageName.$chocolateyPackageVersion.MsiInstall.log"
$silentArgs = "/passive /norestart /l*v `"$installLog`" $msiParams"


# Define Chocolatey parameter hash table
$packageArgs = @{
  packageName    = $chocolateyPackageName
  fileType       = 'MSI'
  file           = $file
  softwareName   = $softwareName
  silentArgs     = $silentArgs
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs
