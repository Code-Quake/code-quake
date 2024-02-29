function killport([parameter(mandatory)] [string] $uport){
    if($upid = (Get-NetTCPConnection -LocalPort $uport -ErrorAction Ignore).OwningProcess){kill $upid}
}

Export-ModuleMember -Function killport
