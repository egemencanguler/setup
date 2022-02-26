$env:Path += ";C:\Program Files\Git\bin"
Import-Module posh-git


$Desktop = "C:\Users\USER\Desktop"
$Documents = "C:\Users\USER\Documents"
$UnityProjects = "C:\Users\USER\Documents\UnityProjects"
$Notes = "C:\Users\USER\Documents\Sync\notes"


function text($path)
{
    & 'C:\Program Files\Sublime Text\subl.exe' $path
}


function profile(){ text($PROFILE) }


function godesktop(){cd $Desktop}
function godocuments(){cd $Documents}
function gogame(){cd $UnityProjects}
function gonotes(){text($Notes)}
function open($path){explorer.exe $path}
