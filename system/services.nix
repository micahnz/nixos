{ config, pkgs, ... }:

{
  # requried for sddm
  services.xserver.enable = true;

  # kde plasma 6
  services.displayManager = {
    sddm.enable = true;
    sddm.wayland.enable = true;
    plasma6.enable = true;
  };

  # keyboard loayout for x11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # audio
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # printing
  services.printing.enable = true;

  # docker
  virtualisation.docker.enable = true;
}
