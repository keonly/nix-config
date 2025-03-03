{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./linux
    ./linux/bar
    ./linux/gtk
    ./linux/wm
    ./common/optional
  ];

  programs.kitty = {
    settings.shell = "fish";
    font.size = lib.mkForce 14;
  };

  waybar.enable = true;
  sway.enable = true;
  spotify-player.enable = true;
}
