function Set-Aliases{
    # Define aliases to call fuzzy methods from PSFzf
    New-Alias -Scope Global -Name fkill -Value Invoke-FuzzyKillProcess -ErrorAction Ignore
    New-Alias g goto
    New-Alias vs publishVS
}

Export-ModuleMember -Function Set-Aliases
