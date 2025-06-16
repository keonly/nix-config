{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    carapace.enable = lib.mkEnableOption "Whether to enable carapace";
  };

  config = lib.mkIf config.carapace.enable {
    programs.carapace = {
      enable = true;

      enableBashIntegration = true;
      enableFishIntegration = true;
      enableNushellIntegration = true;
      enableZshIntegration = true;
    };
  };
}
