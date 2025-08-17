{ config, lib, pkgs, ... }:

/* Common packages across all systems */
{
  environment.systemPackages = with pkgs; [
    vim
    git
    gh
  ];
}
