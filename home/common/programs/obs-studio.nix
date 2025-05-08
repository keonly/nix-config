{
  lib,
  config,
  ...
}: {
  options = {
    obs-studio.enable = lib.mkEnableOption "Whether to enable obs-studio";
  };

  config = lib.mkIf config.obs-studio.enable {
    programs.obs-studio = {
      enable = true;
    };
  };
}
