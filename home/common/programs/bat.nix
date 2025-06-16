{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    bat.enable = lib.mkEnableOption "Whether to enable bat";
  };

  config = lib.mkIf config.bat.enable {
    programs.bat = {
      enable = true;
    };
  };
}
