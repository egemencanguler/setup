# Setup
## [KeyTweak](https://m.majorgeeks.com/files/details/keytweak.html)
* Remap Left Window to Left Control
* Remap Right Window to Left Control
* Remap Capslock to Esc

## [LightShot](https://app.prntscr.com/en/) (Screenshot Tool)
* Change shortcut to alt + s

## [ueli](https://ueli.app/#/)
Keystore launcher
* Put your shortcuts under ```C:\Users\USER\AppData\Roaming\Microsoft\Windows\Start Menu\Programs``` to make them show up at the launcher

## Windows Terminal
* Download [Windows Terminal](https://github.com/microsoft/terminal/releases)
* Download [Powershell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows)
* Change default shell to powershell from windows powershell
* Change Close Panel short cut to: ctrl + w
* Change Duplicate Panel short cut to: ctrl + t
* Change Find short cut to: ctrl + f
* Create the [profile file](profile.ps1) under /Documents/PowerShell/Microsoft.PowerShell_profile.ps1
* Set script execution permission ```Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass```

* Try using where command in cmd. Like this where wt.exe, you should get full path (mine C:\Users\{user-name}\AppData\Local\Microsoft\WindowsApps\wt.exe

## Git
* Download and install [Git](https://git-scm.com/)
* Add git path
```
$env:Path += ";C:\Program Files\Git\bin"
```

## Web Site Blocker
https://github.com/AXeL-dev/distract-me-not
