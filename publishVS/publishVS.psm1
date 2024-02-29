function publishVS {
    Set-Location -Path "P:\THSVersionSelector\THSVersionSelector"
    dotnet publish --configuration release --framework net8.0-windows10.0.19041.0 --sc /p:GenerateAppxPackageOnBuild=true /p:AppxPackageSigningEnabled=true /p:PackageCertificateThumbprint="F91844206A8556B589F5B7AF9FC5D447952292B1"
}

Export-ModuleMember -Function publishVS
