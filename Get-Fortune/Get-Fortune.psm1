function Get-Fortune {
	[System.IO.File]::ReadAllText("p:\scripts\fortunes.txt") -split "`n%`n" | Get-Random
}

Export-ModuleMember -Function Get-Fortune
