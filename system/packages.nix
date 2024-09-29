{ config, pkgs, ... }:

{
  environment.shells = [
    pkgs.bash
    pkgs.zsh
  ];

  environment.systemPackages = [
    pkgs.curl
    pkgs.git
    pkgs.wget
    pkgs.vim
  ];

  programs.zsh.enable = true;
}
