{ config, lib, pkgs, ... }:

/* KDE Plasma specific configurations */
{
  services.xserver.enable = true;
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  services.desktopManager.plasma6.enable = true;
}
