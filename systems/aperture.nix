{ config, lib, pkgs, ... }:

/* aperture configuration file */
{
  imports = 
    [
      /etc/nixos/hardware-configuration.nix

      ./modules/system/core.nix
      ./modules/packages/corepkgs.nix
    ];
    
  /* Use systemd-boot */
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  /* Network config */
  networking.hostName = "aperture";

  # Make sure this is the FIRST VERSION of NixOS installed!
  # Must be the SAME version as installer iso version!
  system.stateVersion = "25.05";

}
