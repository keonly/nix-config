{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    direnv.enable = lib.mkEnableOption "Whether to enable direnv";
  };

  config = lib.mkIf config.direnv.enable {
    programs.direnv = {
      enable = true;

      enableBashIntegration = true;
      enableNushellIntegration = true;
      enableZshIntegration = true;
    };
  };
}
