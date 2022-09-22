# Installation
- Install Ubuntu server edition.
```
sudo timedatectl set-timezone Africa/Johannesburg
sudo apt install xinit
sudo apt install i3
startx
```

## Apps
```
sudo apt install firefox \
    lxappearance \
    unzip \
    gnome-screenshot \
    sxiv \
    rofi \
    gcolor3 \
    gnome-keyring \
    feh \
    dunst \
    pavucontrol \
    gimp \
    inkscape \
    locate \
    lm-sensors \
    make \
    gcc \
    picom \
    rxvt-unicode \
    xss-lock \
    playerctl \
    network-manager-gnome
```

### Laptop focused apps
```
sudo apt install xinput \
    brightnessctl
```

## Rofi
- Tweak entry titles
```
sudo updatedb
locate *.desktop
```

## Theme
```
sudo apt install arc-theme
```

## Dropbox CLI
```
https://www.dropbox.com/install-linux
sudo dpkg -i dropbox_*.deb
dropbox start
```

## Authentication Agent
An authentication agent is required when opening gui applications with elevated priviledges.

```
sudo apt install policykit-desktop-privileges policykit-1-gnome
```

Then add the following to the i3 config file:
```
exec --no-startup-id /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
```

## Motherboard Sensors (ITE 0x8689)
There are two options for enabling the motherboard's onboard sensors:

1. gigabyte_wmi module

Module written to leverage Windows Management Instrumentation (WMI).
Currently, this only gives access to the temperature sensors.
```
sudo modprobe -r gigabyte_wmi
sudo modprobe gigabyte-wmi force_load=1
sensors
```

2. it87 module

Add the following to `/etc/default/grub`:
```
GRUB_CMDLINE_LINUX="acpi_enforce_resources=lax"
```
Then update grub, reboot and load the it87 module with the 0x8628 id:
```
sudo update-grub
reboot
```
```
sudo modprobe it87 force_id=0x8628
sensors
```
