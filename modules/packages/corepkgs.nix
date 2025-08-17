{ config, lib, pkgs, ... }:

/* Common packages across all systems */
{
  environment.systemPackages = with pkgs; [
    vim
    git
    gh
  ];

  programs.git = {
    enable = true;
    userName = "kilobyte-disk";
    userEmail = "kinsol.mail@Gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
