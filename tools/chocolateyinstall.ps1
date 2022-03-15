$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.ultraedit.com/main/ue/win/ue_english.exe'
$url64      = 'https://downloads.ultraedit.com/main/ue/win/ue_english_64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  softwareName  = 'UltraEdit'
  checksum      = '1B17EB1DE167013B62BFD35801B23736900EEAB8EB0B45F50657966ED0BACC55'
  checksumType  = 'sha256'
  checksum64    = '03819BFBC8A44C769E7A60251DEE94AAD38C19602DB464150DD7E98BDD433898'
  checksumType64= 'sha256'
  silentArgs   = '/S TARGETDIR=`"E:\Software`"'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
