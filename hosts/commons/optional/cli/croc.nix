{
  pkgs,
  lib,
  config,
  ...
}: {
  environment.systemPackages = lib.mkMerge [
    (with pkgs; [croc])
  ];
}
