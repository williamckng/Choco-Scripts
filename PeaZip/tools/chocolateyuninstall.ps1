$ErrorActionPreference = 'Stop';

$softwareName  = 'PeaZip'
$file          = Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*' | Where-Object { $_.DisplayName -match "$softwareName" } | Select-Object -ExpandProperty UninstallString
$silentArgs    = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG=`"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).Uninstall.log`""

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = $softwareName
  fileType      = 'exe'
  file          = $file
  silentArgs    = $silentArgs
  validExitCodes= @(0)
}

Uninstall-ChocolateyPackage @packageArgs
