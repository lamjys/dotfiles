# powershell script extension is *.ps1
# need to Set-ExecutionPolicy RemoteSigned, default is Restricted
# run script on command line by add & symbol
# e.g. & C:\User\users\myapp\dotfiles\ps1\desktoplight.ps1
# create shortcut icon:
# target is: powershell.exe -noexit -ExecutionPolicy Bypass -File C:\User\users\myapp\dotfiles\ps1\desktoplight.ps1
# remove -noexit for powershell window to exit after run
# set run minimize for the shortcut icon

$bearer = Get-Content C:\Users\user\myapp\dotfiles\ps1\bearer.txt -Raw
$param = @{
    Uri           = "http://192.168.0.210:8123/api/services/media_player/toggle"
    Method        = "Post"
    Body          = '{"entity_id": "media_player.kef"}'
    ContentType   = "application/json"
    Header        = @{Authorization = $bearer}
}
Invoke-RestMethod @param
