{ config, lib, pkgs, ... }:

/* Kilo user configuration */
{
  users.users.kilo = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}

