$ErrorActionPreference = 'Stop'

# Localize Chocolatey environment variables
$chocolateyPackageVersion = $env:chocolateyPackageVersion
$chocolateyPackageName = $env:chocolateyPackageName

# Define other local variables
$softwareName = 'Adobe Acrobat Reader MUI'
$fileName = 'setup.exe'
$fileLocation = '\\192.168.100.1\DS-Create$\Applications'
$mspName = 'AcroRdrDCx64Upd2300820555_MUI.msp'
$msiParams = "PATCH=$mspName TRANSFORMS=`"$fileLocation\$softwareName\AcroPro.mst`" DISABLE_ARM_SERVICE_INSTALL=1"

# Define source location
$file = "$fileLocation\$softwareName\$fileName"

# Define install parameters
$installLog = "$env:TEMP\$chocolateyPackageName.$chocolateyPackageVersion.MsiInstall.log"
$silentArgs = "/sPB /rs /msi /l*v `"$installLog`" $msiParams"

# Define Chocolatey parameter hash table
$packageArgs = @{
  packageName    = $chocolateyPackageName
  fileType       = 'exe'
  file           = $file
  softwareName   = $softwareName
  silentArgs     = $silentArgs
  validExitCodes = @(0)
}

Install-ChocolateyInstallPackage @packageArgs
