function Get-WelcomeGreeting()
{
  $time = Get-Date -format "HH"
  if($time -gt 22 || $time -lt 04){
    $greeting = "Good night"
  }
  elseif($time -lt 12){
    $greeting = "Good morning"
  }
  elseif($time -lt 18){
    $greeting = "Good afternoon"
  }
  elseif($time -lt 22){
    $greeting = "Good evening"
  }
  else{
    $greeting = "Hello"
  }

  $WELCOME_MSG="$greeting $Env:UserName!"

  Write-Output ($WELCOME_MSG) | lolcat

  Write-Output (" ")`
}

Export-ModuleMember -Function Get-WelcomeGreeting