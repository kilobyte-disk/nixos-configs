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

    config = {
      user = {
        name = "kilobyte-disk";
        email = "kinsol.mail@Gmail.com";
      };

      init.defaultBranch = "main";
    };
  };
}
