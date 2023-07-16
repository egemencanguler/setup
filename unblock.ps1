param([switch]$Elevated)

function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if ((Test-Admin) -eq $false)  {
    if ($elevated) {
        # tried to elevate, did not work, aborting
    } else {
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    }
    exit
}

'running with full privileges'


$defaultHostsFile = @"

"@

try
{
    $defaultHostsFile | Out-File -FilePath C:\Windows\System32\drivers\etc\hosts -Force -Encoding utf8
    Write-Host "Hosts file updated to default->"
    $defaultHostsFile
}
catch
{
    Write-Host $_.Exception.Message
}
