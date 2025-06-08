{
  lib,
  config,
  ...
}: {
  options = {
    pay-respects.enable = lib.mkEnableOption "Whether to enable pay-respects";
  };

  config = lib.mkIf config.pay-respects.enable {
    programs.pay-respects = {
      enable = true;

      enableBashIntegration = true;
      enableFishIntegration = true;
      enableNushellIntegration = true;
      enableZshIntegration = true;

      options = [
        "--alias"
        "f"
      ];
    };
  };
}
