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
    ./linux/gtk
    ./linux/wm
    ./common/optional
  ];

  programs.kitty = {
    settings.shell = "fish";
    font.size = lib.mkForce 14;
  };

  spotify-player.enable = true;
}
