function Get-Neofetch {
	$fortunetext = Get-Fortune | cowsay -f vader
    $fortunetext > .\fortunes.txt

    neofetch --ascii fortunes.txt --shell_version off --color_blocks off --memory_display info --colors 4 8 4 4 8 6 

    Remove-Item .\fortunes.txt
}

Export-ModuleMember -Function Get-Neofetch
