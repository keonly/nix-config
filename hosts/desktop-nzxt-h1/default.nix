{pkgs, ...}: let
  hostName = "nzxt-h1";
in {
  imports = [./hardware-configuration.nix];

  environment.systemPackages = with pkgs; [
    neovim
    git
    sway
  ];

  services.displayManager.ly.settings = {
    waylandsessions = "${pkgs.sway}/share/wayland-sessions";
  };

  networking = {
    inherit hostName;
  };

  system.stateVersion = "25.05";

  display-manager.enable = true;
  fonts.enable = true;
  kime.enable = true;
  nvidia.enable = true;
  pipewire.enable = true;
  xdg-portal.enable = true;
}
