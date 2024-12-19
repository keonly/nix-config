{
  pkgs,
  lib,
  ...
}: {
  environment.systemPackages = lib.mkMerge [
    (with pkgs; [fontconfig])
  ];
}
