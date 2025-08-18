{ config, lib, pkgs, ... }:

/* Core system configs */
{
  boot.kernelPackages = pkgs.linuxPackages_latest;

  nixpkgs.config.allowUnfree = true;

  time.timeZone = "PST8PDT";

  networking.networkmanager.enable = true;

  /* Enable flakes */
  nix.settings.experimental-features = [ "flakes" ];
}

