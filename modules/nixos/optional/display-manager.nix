{
  lib,
  config,
  ...
}: {
  options = {
    display-manager.enable = lib.mkEnableOption "Whether to enable ly as the display manager";
  };

  config = lib.mkIf config.display-manager.enable {
    services.displayManager.ly.enable = true;
  };
}
