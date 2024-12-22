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
  ];

  programs.kitty.settings.shell = "nu";
}
