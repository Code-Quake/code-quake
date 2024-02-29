function Set-ReadLineHandlers {
    # Set Some Option for PSReadLine to show the history of our typed commands
    Set-PSReadLineOption -PredictionSource History 
    Set-PSReadLineOption -PredictionViewStyle ListView 
    Set-PSReadLineOption -EditMode Windows 

    Set-PSReadLineKeyHandler -Key Ctrl+Shift+b `
    -BriefDescription BuildCurrentDirectory `
    -LongDescription “Build the current directory” `
    -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert(“dotnet build”)  
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
    }

    Set-PSReadLineKeyHandler -Key Ctrl+d `
    -BriefDescription DetachUSBFromWSL `
    -LongDescription “Detach the USB Com port from WSL” `
    -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert(“usbipd wsl detach --busid 5-3”)  
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
    }

    Set-PSReadLineKeyHandler -Key Ctrl+b `
    -BriefDescription BindUSBToWSL `
    -LongDescription “Bind the USB Com port to WSL” `
    -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert(“usbipd wsl attach --busid 5-3 --distribution Ubuntu-23.04”)  
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
    }
}

Export-ModuleMember -Function Set-ReadLineHandlers
