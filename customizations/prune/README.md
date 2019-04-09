`prune` Customization
=====================
Removes libre office and thunderbird, does update.

## Method
Uses apt-get remove with the `purge` option.

## Customizations
(None)

## Notes
No dependencies.

Originally this customization included an apt-get updgrade, but that upgrade
often invokes the grub "set device" dialog which breaks everything.
