{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    eza.enable = lib.mkEnableOption "Whether to enable eza";
  };

  config = lib.mkIf config.eza.enable {
    programs.eza = {
      enable = true;

      git = true;
      icons = "auto";
      enableBashIntegration = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
    };
  };
}
