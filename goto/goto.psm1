function goto {
    param (
        $location
    )

    Switch ($location) {
        "V8" {
            Set-Location -Path "P:\Uhaul.Payments.TerminalHostServer.V8"
        }
        "V7" {
            Set-Location -Path "P:\Uhaul.Payments.TerminalHostServer"
        }
        "VS" {
            Set-Location -Path "P:\THSVersionSelector\THSVersionSelector"
        }
        "home" {
            Set-Location -Path "$HOME"
        }
        default {
            echo "Invalid location"
        }
    }
}

Export-ModuleMember -Function goto
