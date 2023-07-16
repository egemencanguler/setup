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



$blockUrlList = @("www.facebook.com", "www.youtube.com","www.gogoanime.onl","www.linkedin.com","www.twitter.com","www.bloomberght.com/","www.sozcu.com.tr/") 


$defaultHostsFile = @"

"@

try
{
    $originalhostsFile= Get-Content C:\Windows\System32\drivers\etc\hosts -ErrorAction Ignore
    $hostFileExists = $true
    if(-not($originalhostsFile))
    {
        $hostFileExists = $false
        $originalhostsFile = $defaultHostsFile
    }
    $updatedHostsFile = $originalhostsFile
    ForEach($url in $blockUrlList)
    {
        if($hostFileExists)
        {
            $updatedHostsFile = $updatedHostsFile+"127.0.0.1 $url"
        }
        else
        {
            $updatedHostsFile = $updatedHostsFile+"`n127.0.0.1 $url"
        }

    }
    $updatedHostsFile | Out-File -FilePath C:\Windows\System32\drivers\etc\hosts -Encoding utf8 -Force
    Write-Host "updated Hosts file->"
    $updatedHostsFile
}
catch
{
    Write-Host $_.Exception.Message
}
