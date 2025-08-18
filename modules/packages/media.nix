{ config, lib, pkgs, ... }:

/* Common media packages */
{
  environment.systemPackages = with pkgs; [
    /* Players */
    strawberry
    vlc
    mpv
    kdePackages.okular
    kdePackages.gwenview
  
    /* Editors */
    gimp
    audacity
    obs-studio
    kdePackages.kdenlive

  ];
}
