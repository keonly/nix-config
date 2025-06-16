{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    vesktop.enable = lib.mkEnableOption "Whether to enable vesktop";
  };

  config = lib.mkIf config.vesktop.enable {
    programs.vesktop = {
      enable = true;
    };
  };
}
