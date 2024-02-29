function Set-PSFzfOptions{
    # Override PSReadLine's history search
    Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

    # Override default tab completion
    Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

    # PSFzf has undocumented option to use fd executable for
    # file and directory searching. This enables that option.
    Set-PsFzfOption -EnableFd:$true
}

Export-ModuleMember -Function Set-PSFzfOptions
