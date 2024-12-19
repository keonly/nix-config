{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    nushell.enable = lib.mkEnableOption "enables nushell";
  };

  config = lib.mkIf config.nushell.enable {
    environment.systemPackages = lib.mkMerge [
      (with pkgs; [nushell])
    ];
  };
}
