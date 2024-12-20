{
  pkgs,
  lib,
  config,
  ...
}: {
  environment.systemPackages = lib.mkMerge [
    (with pkgs; [fish])
  ];

  programs.fish.enable = true;
}
