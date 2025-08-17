{ config, lib, pkgs, ... }:

/* Packages for desktop use */
{
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    konsole
  ];
}

