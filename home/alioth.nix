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
    ./linux/hypr
    ./common/optional
  ];

  programs.kitty.settings.shell = "fish";

  spotify-player.enable = true;
}
