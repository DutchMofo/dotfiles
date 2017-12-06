
# Keyboard unresponsive after suspend
Added "atkbd.reset i8042.nomux" to grub conf.  
File: `/boot/grub/grub.cfg`

```
linux ... root=UUID=... rw quiet atkdb.reset i8042.nomux
```

# Systemd xorg settings
Prevent screen tearing in mpv.  
File: `/etc/X11/xorg.conf.d/20-intel.conf`

```
Section "Device"
	Identifier  "IntelGraphics"
	Driver      "intel"
	Option      "TearFree" "true"
EndSection
```

# Shift + [numpad end] inserts "1" instead of selecting from current cursor to end of line.
Added numpad:microsoft xkbOption to xorg conf.  
File: `/etc/X11/xorg.conf.d/00-keyboard.conf`

```
Section "InputClass"
        Identifier "system-keyboard"
        MatchIsKeyboard "on"
        Option "XkbOptions" "numpad:microsoft"
EndSection
```

# Touchpad tapping not working
Added "Tapping enabled" to xorg conf.  
File: `/etc/X11/xorg.conf.d/30-touchpad.conf`

```
Section "InputDevice"
    Identifier "SynPS/2 Synaptics TouchPad"
    Driver     "synaptics"
    Option     "Tapping Enabled" "1"
EndSection
```

# Wifi improvements
Added ath9k settings file, disabled hardware encryption because it
bottlenecks and enable bluetootch coexist
File: `/etc/modprobe.d/ath9k.conf`

```
options ath9k nohwcrypt=1 btcoex_enable=1 
```
