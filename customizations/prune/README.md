## `prune` Customization
Removes libre office and thunderbird, does update.

### Method
Uses apt-get remove with the `purge` option.

### Customizations
(None)

### Notes
No dependencies.

This script will NOT perform updates to the grub loader, because these upgrades
will invoke a UI that will hang the script.
