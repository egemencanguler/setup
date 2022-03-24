# Setup
## [KeyTweak](https://m.majorgeeks.com/files/details/keytweak.html)
* Remap Left Window to Left Control
* Remap Right Window to Left Control
* Remap Capslock to Esc

## [LightShot](https://app.prntscr.com/en/) (Screenshot Tool)
* Change shortcut to alt + s

## [PowerToys](https://github.com/microsoft/PowerToys)
* Always On Top
  * Change short cut to: ctrl + q
  * Increate thickness
* Keyboard Manager
  * ctrl + I = Up
  * ctrl + K = Down
  * ctrl + J = Left
  * ctrl + L = Right
  * ctrl + U = Alt + Left
  * ctrl + O = Alt + Right
* PowerToys Run
  * Calculator,Folder,Windows Search (Disable Include in global results),
  * Program,Shell,Windows System Commands, Window Walker

## Windows Terminal
   
* Download [Windows Terminal](https://github.com/microsoft/terminal/releases)
* Download [Powershell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows)
* Change default shell to powershell from windows powershell
* Change Close Panel short cut to: ctrl + w
* Change Duplicate Panel short cut to: ctrl + t
* Change Find short cut to: ctrl + f
* Create the [profile file](profile.ps1) under /Documents/PowerShell/Microsoft.PowerShell_profile.ps1
* Set script execution permission ```Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass```

## Git
* Download and install [Git](https://git-scm.com/)
* Add git path
```
$env:Path += ";C:\Program Files\Git\bin"
```
* Install [git posh](https://github.com/dahlbyk/posh-git/blob/master/README.md#git-status-summary-information ) for better git auto complete
* Add import posh module command to powershell profile
```
Import-Module posh-git 
```

