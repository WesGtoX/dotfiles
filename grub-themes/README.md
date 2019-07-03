# Grub Themes

## Theme: Poly Dark

### Install

* Copy `poly-dark/` to `/boot/grub/themes`

* Change the `GRUB_THEME` on  `/etc/default/grub` :
`GRUB_THEME=/boot/grub/themes/poly-dark/theme.txt`

* Mak sure GRUB uses graphical output, the line:
 `GRUB_TERMINAL_*=`  on  `/etc/default/grub` has to be commented.

* Run: `grub-mkconfig -o /boot/grub/grub.cfg`

## References ##

* [Poly dark](https://store.kde.org/p/1230780/)

## License ##

[MIT](LICENSE)
