{ config, pkgs, inputs, ... }:
let
  home-manager = inputs.home-manager;
in
{
  imports = [
    home-manager.nixosModules.home-manager
  ];

  # home-manager settings
  home-manager = {
    extraSpecialArgs = {
      userpkgs = config.userpkgs;
      nur = config.nur;
    };
    useGlobalPkgs = true;
    useUserPackages = true;
    users.micah = import ../../home/micah;
  };
}
