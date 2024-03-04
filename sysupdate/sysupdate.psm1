function sysupdate {
  $esc=$([char]27)
  $blue="[38;5;27m"
  $magenta="[38;5;199m"
  
  UpdateProgressBar 10
  Write-Host "`n$esc$blue $esc$magenta$esc[4mWinget Updates$esc[0m"
  winget update --all -h

  UpdateProgressBar 20
  Write-Host "`n$esc$blue󰜐 $esc$magenta$esc[4mScoop Updates$esc[0m"
  scoop update --all -q

  UpdateProgressBar 40
  Write-Host "`n$esc$blue󰨇 $esc$magenta$esc[4mDell Updates$esc[0m"
  dcu-cli.exe /scan -silent
  dcu-cli.exe /applyupdates -silent

  UpdateProgressBar 60
  Write-Host "`n$esc$blue󰖳 $esc$magenta$esc[4mWindows Updates$esc[0m"
  Get-WindowsUpdate -Install -AcceptAll -MicrosoftUpdate:$MicrosoftUpdates

  UpdateProgressBar 80
  Write-Host "`n$esc$blue󰓜 $esc$magenta$esc[4mWindows Store Updates$esc[0m"
  Get-CimInstance -Namespace "Root\cimv2\mdm\dmmap" -ClassName "MDM_EnterpriseModernAppManagement_AppManagement01" | Invoke-CimMethod -MethodName UpdateScanMethod
  
  UpdateProgressBar 100
  Write-Host "`n$esc$blue󱦟 $esc$magenta$esc[4mUpdates Complete$esc[0m"

  UpdateProgressBar 0
}

Export-ModuleMember -Function sysupdate
