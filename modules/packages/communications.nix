{ config, lib, pkgs, ... }:

/* Communication applications */
{
  environment.systemPackages = with pkgs; [
    discord
  ];
}
