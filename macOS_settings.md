## Running mc (midnight commander) under su on Mojave/Catalina/Big Sur/Monterey/Ventura/Sonoma/Sequoia
  [solution from](https://apple.stackexchange.com/questions/340414/running-mc-midnight-commander-under-su-on-mojave-catalina-big-sur-monterey-ven)
  ```zsh
  sudo dscl . -change /Users/root UserShell /bin/sh /bin/bash
  ```
  revert back to
  ```zsh
  sudo dscl . -change /Users/root UserShell /bin/bash /bin/sh
  ```
