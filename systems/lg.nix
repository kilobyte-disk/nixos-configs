{ config, lib, pkgs, ... }:

/* lg configuration file */
{
  imports = 
    [
      ./lg-hardware.nix

      ../modules/system/core.nix
      ../modules/packages/corepkgs.nix

      ../modules/packages/media.nix
      ../modules/packages/desktop.nix
      ../modules/packages/security.nix
      ../modules/packages/language.nix
      ../modules/packages/communications.nix

      ../modules/hardware/hd8730m.nix
      ../modules/hardware/intel.nix

      ../modules/desktops/plasma.nix
      
      ../users/kilo.nix
    ];
    
  /* Use systemd-boot */
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  /* Network config */
  networking.hostName = "goldstar";

  # Make sure this is the FIRST VERSION of NixOS installed!
  # Must be the SAME version as installer iso version!
  system.stateVersion = "25.05";

} 
