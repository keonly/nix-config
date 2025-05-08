{
  lib,
  config,
  ...
}: {
  options = {
    thefuck.enable = lib.mkEnableOption "Whether to enable thefuck";
  };

  config = lib.mkIf config.thefuck.enable {
    programs.thefuck = {
      enable = true;

      enableBashIntegration = true;
      enableFishIntegration = true;
      enableNushellIntegration = true;
      enableZshIntegration = true;
    };
  };
}
