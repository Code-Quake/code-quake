function sysupdate {
  UpdateProgressBar 10
  Write-Host $($PSStyle.bold)`e[4m WinGet Updates`e[24m$($PSStyle.BoldOff) -ForegroundColor Magenta
  winget update --all -h

  UpdateProgressBar 20
  Write-Host $($PSStyle.bold)`e[4m󰜐 Scoop Updates`e[24m$($PSStyle.BoldOff) -ForegroundColor Magenta
  scoop update --all -q

  UpdateProgressBar 40
  Write-Host $($PSStyle.bold)`e[4m󰨇 Dell Updates`e[24m$($PSStyle.BoldOff) -ForegroundColor Magenta
  dcu-cli.exe /scan -silent
  dcu-cli.exe /applyupdates -silent

  UpdateProgressBar 60
  Write-Host $($PSStyle.bold)`e[4m󰖳 Windows Updates`e[24m$($PSStyle.BoldOff) -ForegroundColor Magenta
  Get-WindowsUpdate -Install -AcceptAll -MicrosoftUpdate:$MicrosoftUpdates

  UpdateProgressBar 80
  Write-Host $($PSStyle.bold)`e[4m󰓜 Windows Store Updates`e[24m$($PSStyle.BoldOff) -ForegroundColor Magenta
  Get-CimInstance -Namespace "Root\cimv2\mdm\dmmap" -ClassName "MDM_EnterpriseModernAppManagement_AppManagement01" | Invoke-CimMethod -MethodName UpdateScanMethod
  
  UpdateProgressBar 100
  Write-Host $($PSStyle.bold)`e[4m󱦟 Updates Complete`e[24m$($PSStyle.BoldOff) -ForegroundColor Magenta

  UpdateProgressBar 0
}

Export-ModuleMember -Function sysupdate
