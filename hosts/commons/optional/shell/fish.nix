{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    fish.enable = lib.mkEnableOption "enables fish";
  };

  config = lib.mkIf config.fish.enable {
    environment.systemPackages = lib.mkMerge [
      (with pkgs; [fish])
    ];
  };
}
