    function Show-Users {
        Get-CimInstance -ClassName Win32_Account | Where-Object { $_.SIDType -eq 1 } | Select-Object Caption, SID
    }
    Export-ModuleMember -Function Show-Users
