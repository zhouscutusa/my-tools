$CONFIG_PATH="$env:appdata\Scooter Software\Beyond Compare 4\BCState.xml"
$TRUE_FALSE=(Test-Path $CONFIG_PATH)
if($TRUE_FALSE -eq "True")
{
    Remove-Item "$env:appdata\Scooter Software\Beyond Compare 4\BCState.xml" -Force -Confirm:$false
    "Deleted: $CONFIG_PATH"
}
else
{
    "$CONFIG_PATH doesn't exist, no need to delete!"
}
$CONFIG_PATH="$env:appdata\Scooter Software\Beyond Compare 4\BCState.xml.bak"
$TRUE_FALSE=(Test-Path $CONFIG_PATH)
if($TRUE_FALSE -eq "True")
{
    Remove-Item "$env:appdata\Scooter Software\Beyond Compare 4\BCState.xml.bak" -Force -Confirm:$false
    "Deleted: $CONFIG_PATH"
}
else
{
    "$CONFIG_PATH doesn't exist, no need to delete!"
}
#$REGEDIT_VALUE=(Get-ItemProperty "HKCU:\SOFTWARE\Scooter Software\Beyond Compare 4" | Select-Object CacheID)
#$REGEDIT_VALUE=(reg query "HKCU\SOFTWARE\Scooter Software\Beyond Compare 4" /v CacheID -ErrorAction SilentlyContinue)
$REGEDIT_VALUE=(Get-ItemProperty "HKCU:\SOFTWARE\Scooter Software\Beyond Compare 4" -Name CacheID -ErrorAction SilentlyContinue)
if($REGEDIT_VALUE -eq $null)
{
    "CacheID doesn't exists, no need to delete!"
}
else
{
    reg delete "HKCU\Software\Scooter Software\Beyond Compare 4" /v "CacheID" /f
    "Deleted: HKCU\Software\Scooter Software\Beyond Compare 4\CacheID"
}





#Remove-Item "$env:appdata\Scooter Software\Beyond Compare 4\BCState.xml" -Force -Confirm:$false
#Remove-Item "$env:appdata\Scooter Software\Beyond Compare 4\BCState.xml.bak" -Force -Confirm:$false
#reg delete "HKCU\Software\Scooter Software\Beyond Compare 4" /v "CacheID" /f
#pause





