import-module ./cowsay.psm1 -force
import-module pester
 
Describe 'cowsay' {
    It 'Given no parameters, it writes output to host' {
        Mock Write-Host {}
 
        cowsay -f vader test
    }
}