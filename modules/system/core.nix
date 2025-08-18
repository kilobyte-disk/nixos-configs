{ config, lib, pkgs, ... }:

/* Core system configs */
{
  boot.kernelPackages = pkgs.linuxPackages_latest;

  time.timeZone = "PST8PDT";
  i18n.defaultLocale = "en_US.UTF-8";

  networking.networkmanager.enable = true;

  /* Enable flakes */
  nix.settings.experimental-features = [ "flakes" ];
}

