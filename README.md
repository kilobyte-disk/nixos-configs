# nixos-configs

My NixOS configurations across my machines.
Very useful for quickly installing a complete stable system tailored to my liking.

# Installing from nixos installer
Assuming user is root,<br>
after running ```nixos-generate-config```,<br>
```
$ git clone https://github.com/kilobyte-disk/nixos-configs.git
$ cd nixos-configs
$ cp /mnt/etc/nixos/hardware-configuration.nix systems/your_system_name-hardware.nix
```

Make sure that ```systems/your_system_name.nix``` has ```system.stateVersion``` set to the same version of NixOS as the installer.
<br>

```
$ git add .
$ nixos-install --flake .#your_system_name
```
