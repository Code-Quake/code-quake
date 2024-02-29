function Get-WelcomeInfo{
    $t = $host.ui.RawUI.ForegroundColor   
    $host.ui.RawUI.ForegroundColor = "Blue"

    UpdateProgressBar 80

    Write-Output "Today`n------"
    Write-Host 🗓️  (Get-Date -format "f")

    Get-Weather

    UpdateProgressBar 90

    $ip_address=(Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias Ethernet).IPAddress
    $ip_interface=(Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias Ethernet).InterfaceAlias
    Write-Output ("🌐 IP: $(curl -s -m 1 'https://ipinfo.io/ip') (${ip_address} on ${ip_interface})")`

    $host.ui.RawUI.ForegroundColor = $t
    Write-Output (" ")`
}

Export-ModuleMember -Function Get-WelcomeInfo
