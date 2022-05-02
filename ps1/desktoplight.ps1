# powershell script extension is *.ps1
# need to Set-ExecutionPolicy RemoteSigned, default is Restricted
# run script on command line by add & symbol
# e.g. & C:\User\users\myapp\dotfiles\ps1\desktoplight.ps1
# create shortcut icon:
# target is: powershell.exe -noexit -ExecutionPolicy Bypass -File C:\User\users\myapp\dotfiles\ps1\desktoplight.ps1
# remove -noexit for powershell window to exit after run
# set run minimize for the shortcut icon

$bearer = Get-Content .\bearer.txt -Raw
$param = @{
    Uri           = "http://192.168.0.210:8123/api/services/switch/toggle"
    Method        = "Post"
    Body          = '{"entity_id": "switch.tasmota01"}'
    ContentType   = "application/json"
    Header        = @{Authorization = $bearer}
}
Invoke-RestMethod @param