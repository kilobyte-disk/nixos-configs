{ config, lib, pkgs, ... }:

/* Security configuration */
{
  environment.systemPackages = with pkgs; [
    tor-browser
    tor
    keepassxc
  ];
}
