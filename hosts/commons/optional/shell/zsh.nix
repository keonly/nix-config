{
  pkgs,
  lib,
  config,
  ...
}: {
  environment.systemPackages = lib.mkMerge [
    (with pkgs; [zsh])
  ];

  programs.zsh.enable = true;
}
