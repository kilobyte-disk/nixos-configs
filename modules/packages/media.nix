{ config, lib, pkgs, ... }:

/* Common media packages */
{
  environment.systemPackages = with pkgs; [
    strawberry
    vlc
    mpv
  ];
}
