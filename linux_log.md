Changes: + line added, - line removed, ~ line changed

# Problem: Keyboard is unresponsive after suspend
# Fix: Added "atkbd.reset i8042.nomux" to /boot/grub/grub.cfg

~ linux ... root=UUID=... rw quiet atkdb.reset i8042.nomux

# Problem: mpv video tearing
# File: /etc/X11/xorg.conf.d/20-intel.conf

Section "Device"
	Identifier  "IntelGraphics"
	Driver      "intel"
	Option      "TearFree" "true"
EndSection


