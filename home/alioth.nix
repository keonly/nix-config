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
    ./linux/wm
  ];

  programs.kitty.settings.shell = "fish";
}
