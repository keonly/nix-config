{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    zsh.enable = lib.mkEnableOption "enables zsh";
  };

  config = lib.mkIf config.zsh.enable {
    environment.systemPackages = lib.mkMerge [
      (with pkgs; [zsh])
    ];
  };
}
