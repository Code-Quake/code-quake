function UpdateProgressBar{
  param(
    [string] $Percent
  )

    Write-Host -NoNewline ([char]27 + "]9;4;1;'$Percent'" + [char]7)
}

Export-ModuleMember -Function UpdateProgressBar
