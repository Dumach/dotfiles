## Windows 11 automatic hibernation during sleep not showing up:
  ```bat
  REG ADD HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\238C9FA8-0AAD-41ED-83F4-97BE242C8F20\9d7815a6-7ee4-497e-8888-515a05f02364 /v Attributes /t REG_DWORD /d 2 /f
  control.exe powercfg.cpl,,3
  ```

  [link_to](https://www.reddit.com/r/thinkpad/comments/1d2blqd/windows_11_automatic_hibernation_during_sleep_by/)

## Reregister Windows Spotlight:
```bat
:: Created by: Shawn Brink
:: Created on: March 16, 2022
:: Updated on: January 18, 2025
:: Tutorial: https://www.elevenforum.com/t/reset-and-re-register-windows-spotlight-in-windows-11.5248/


:: Reset Windows Spotlight
DEL /F /S /Q /A "%USERPROFILE%/AppData\Local\Packages\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\LocalCache\Microsoft\IrisService"
DEL /F /S /Q /A "%USERPROFILE%/AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalCache\Microsoft\IrisService"
DEL /F /S /Q /A "%USERPROFILE%/AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets"
DEL /F /S /Q /A "%USERPROFILE%/AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\Settings"


:: Re-register Windows Spotlight
PowerShell -ExecutionPolicy Unrestricted -Command "& {$manifest = (Get-AppxPackage *ContentDeliveryManager*).InstallLocation + '\AppxManifest.xml' ; Add-AppxPackage -DisableDevelopmentMode -Register $manifest}"
PowerShell -ExecutionPolicy Unrestricted -Command "& {$manifest = (Get-AppxPackage *MicrosoftWindows.Client.CBS*).InstallLocation + '\AppxManifest.xml' ; Add-AppxPackage -DisableDevelopmentMode -Register $manifest}"
```
