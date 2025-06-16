{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    zoxide.enable = lib.mkEnableOption "Whether to enable zoxide";
  };

  config = lib.mkIf config.zoxide.enable {
    programs.zoxide = {
      enable = true;

      enableBashIntegration = true;
      enableFishIntegration = true;
      enableNushellIntegration = true;
      enableZshIntegration = true;
    };
  };
}
