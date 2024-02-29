#` prints next output on new line without newline character
function Get-Weather()
{
  curl -s -m 2 "https://wttr.in?format=%cWeather:+%C+%t,+%p+%w"
  Write-Output " "`
}

Export-ModuleMember -Function Get-Weather
