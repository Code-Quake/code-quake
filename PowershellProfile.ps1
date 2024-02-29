Import-Module UpdateProgressBar

UpdateProgressBar 10

Import-Module TestVM
Import-Module killport
Import-Module sysupdate
Import-Module goto
Import-Module publishVS
Import-Module -Name Terminal-Icons 
Import-Module posh-git
Import-Module PSReadLine
Import-Module PSFzf
Import-Module Get-WelcomeGreeting
Import-Module Get-WelcomeInfo
Import-Module Get-Tips
Import-Module Get-Weather
Import-Module Get-Fortune
Import-Module Get-Neofetch
Import-Module Get-WelcomeInfo
Import-Module Set-PSFzfOptions
Import-Module Set-Aliases
Import-Module Set-ReadLineHandlers
Import-Module "C:\Program Files\PowerToys\WinUI3Apps\..\WinGetCommandNotFound.psd1"

UpdateProgressBar 20

Set-PSFzfOptions

UpdateProgressBar 30

Set-Aliases

UpdateProgressBar 40

Set-ReadLineHandlers

UpdateProgressBar 50

Get-WelcomeGreeting

UpdateProgressBar 60

oh-my-posh init pwsh --config "p:\scripts\joe.omp.json" | Invoke-Expression

UpdateProgressBar 70

TestVMAdapter

UpdateProgressBar 80

Get-Neofetch

Get-WelcomeInfo

UpdateProgressBar 90

Enable-PoshTooltips
Enable-PoshTransientPrompt

#change scoop serach default
Invoke-Expression (&scoop-search --hook)

UpdateProgressBar 0
