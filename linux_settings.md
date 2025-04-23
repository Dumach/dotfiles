## JBL Pebbles not working:
(https://askubuntu.com/questions/15069/how-do-i-change-the-way-ubuntu-adjusts-my-volume-mixer-levels)

(https://askubuntu.com/questions/1407885/how-to-uninstall-pipewire-and-go-back-to-pulseaudio)

## Add shortkey to Gnome:

### Adding to Debian
```bash
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'gedit_launch'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'<Alt><Ctrl>Page_Down'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'/usr/bin/gedit'"
```

## LED keyboard not lighting up when pressed scroll-lock:
(https://superuser.com/questions/1156695/turn-on-off-backlit-xset-led-3-with-scroll-lock)
```bash
#!/bin/bash
on=$(xset -q | grep 'Scroll Lock:' | cut -d ":" -f 7)
echo $on
if [ $on == "off" ]; then
   xset led named "Scroll Lock"
else
   xset -led named "Scroll Lock"
fi 
```

## Gnome games delete:
```bash
sudo apt purge iagno lightsoff four-in-a-row gnome-robots pegsolitaire gnome-2048 hitori gnome-klotski gnome-mines gnome-mahjongg gnome-sudoku quadrapassel swell-foop gnome-tetravex gnome-taquin aisleriot gnome-chess five-or-more gnome-nibbles tali ; sudo apt autoremove
```

## Add fonts:
(https://vitux.com/how-to-install-custom-fonts-on-a-debian-10-system/)

## Make Debian Gnome look like Ubuntu:
(https://www.reddit.com/r/debian/comments/1cv1vqc/how_to_make_debian_look_like_ubuntu/)

(https://askubuntu.com/questions/545741/why-is-shell-theme-disabled-in-gnome-tweak-tool)

## Ubuntu terminal colors:
(https://oatcookies.neocities.org/ubuntu-terminal-colors)

## Fractional Scaling:
(https://www.reddit.com/r/debian/comments/1541fug/gnome_fractional_scaling_debian_12/)

## When wifi won't connect on Fedora:
(http://redhatgov.io/workshops/rhel_8/exercise1.5/)

(https://gist.github.com/simonesestito/97d8cf8e05b7488083cedabcefd5d65c)

## When migrating to a new machine, Fedora boot option missing:
(https://discussion.fedoraproject.org/t/create-new-fedora-in-efi-from-scratch/66513)

## Set to lower Cpu frequency when system is idling:
set-cpu-min-frequency.service:
```bash
   [Unit]
   Description=Set CPU Minimum Frequency to 400 MHz
   After=multi-user.target
   
   [Service]
   Type=oneshot
   ExecStart=/usr/bin/cpupower frequency-set -d 400MHz
   
   [Install]
   WantedBy=multi-user.target
```

## Lower TLS/Crypto version on Fedora:
```bash
update-crypto-policies --set LEGACY
```
(https://fedoraproject.org/wiki/Changes/StrongCryptoSettings2)

## Turn off Avahi-daemon (bonjour, rendezevues, mDNS):
```bash
   sudo systemctl disable --now avahi-daemon.service
   sudo systemctl disable --now avahi-daemon.socket
```

## Create a swapfile with btrfs:
(https://wiki.archlinux.org/title/Btrfs#Swap_file)
```bash
btrfs subvolume create /swap

btrfs filesystem mkswapfile --size 4g --uuid clear /swap/swapfile

swapon /swap/swapfile
```

In /etc/fstab
```bash
/swap/swapfile none swap defaults 0 0
```
