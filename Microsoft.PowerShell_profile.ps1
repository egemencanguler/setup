$env:Path += ";C:\Program Files\Git\bin"
# Import-Module posh-git


$Desktop = "C:\Users\USER\Desktop"
$Documents = "C:\Users\USER\Documents"
$UnityProjects = "C:\Users\USER\Documents\UnityProjects"
$Notes = "C:\Users\USER\Documents\Sync\notes"

$UrlSetup = "https://github.com/egemencanguler/setup/"
$UrlWiki = "https://github.com/dalakgames/dalak_wiki"
$UrlGit = "https://github.com/dalakgames/dalak_wiki/blob/main/git_cheat_sheet.md"


function text($path)
{
    & 'C:\Program Files\Sublime Text\subl.exe' $path
}


function profile(){ text($PROFILE) }


function desktop(){cd $Desktop}
function documents(){cd $Documents}
function games(){cd $UnityProjects}
function notes(){text($Notes)}
function open($path){explorer.exe $path}


function GetCurrentFolderName()
{
    Split-Path -Path (Get-Location) -Leaf
}

function todalak()
{
    $folderName = GetCurrentFolderName
    cd $folderName"\Assets\Dalak"
}

function exitdalak()
{
    cd ..
    cd ..
    cd ..
}

function gitupdatesubmodule()
{
    git submodule update --init --recursive
}

function prompt {
  $p = Split-Path -leaf -path (Get-Location)
  "$p> "
}
