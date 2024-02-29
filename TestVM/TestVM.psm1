<#
 .Synopsis
  Displays the status of the Cisco VM adapter. Can also set it to a weight of 5500

 .Description
  Displays the status of the Cisco VM adapter. Can also set it to a weight of 5500

 .Example
   # Get the adapter status
   TestVMAdapter

 .Example
   # Set the adapter weight to 5500
   SetVMAdapter
#>
function TestVMAdapter()
{
  $testVM = (Get-NetAdapter | Where-Object {$_.InterfaceDescription -Match "Cisco AnyConnect"} | Select-Object status -ExpandProperty status)

  if($testVM -eq "Up")
  {
    Write-Output "VM Connected" | lolcat
  }
  else
  {
    Write-Output "VM Not Connected" | lolcat
  }
}

function SetVMAdapter()
{
  $testVM = (Get-NetAdapter | Where-Object {$_.InterfaceDescription -Match "Cisco AnyConnect"} | Select-Object status -ExpandProperty status)

  if($testVM -eq "Up"){
    Get-NetAdapter | Where-Object {$_.InterfaceDescription -Match "Cisco AnyConnect"} | Set-NetIPInterface -InterfaceMetric 5500
    Write-Output "Interface set" | lolcat
  }
}

Export-ModuleMember -Function TestVMAdapter, SetVMAdapter
