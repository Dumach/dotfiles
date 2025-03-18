## Windows 11 automatic hibernation during sleep not showing up:
  ```bat
  REG ADD HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\238C9FA8-0AAD-41ED-83F4-97BE242C8F20\9d7815a6-7ee4-497e-8888-515a05f02364 /v Attributes /t REG_DWORD /d 2 /f
  control.exe powercfg.cpl,,3
  ```

  [link_to](https://www.reddit.com/r/thinkpad/comments/1d2blqd/windows_11_automatic_hibernation_during_sleep_by/)
