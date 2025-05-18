{pkgs, ...}: let
  hostName = "nzxt-h1";
in {
  imports = [./hardware-configuration.nix];

  boot.loader.grub = {
    font = "${pkgs.iosevka}/share/fonts/truetype/Iosevka-Regular.ttf";
    fontSize = 32;
  };

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
