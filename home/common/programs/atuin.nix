{
  lib,
  config,
  ...
}: {
  options = {
    atuin.enable = lib.mkEnableOption "Whether to enable atuin";
  };

  config = lib.mkIf config.atuin.enable {
    programs.atuin = {
      enable = true;

      enableBashIntegration = true;
      enableFishIntegration = true;
      enableNushellIntegration = true;
      enableZshIntegration = true;
    };
  };
}
