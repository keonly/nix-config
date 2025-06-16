{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    jankyborders.enable = lib.mkEnableOption "Whether to enable jankyborders";
  };

  config = lib.mkIf config.jankyborders.enable {
    services.jankyborders = {
      enable = true;

      settings = {
        style = "round";
        width = 8.0;
        active_color = "0xf4f4f4ff";
        inactive_color = "0x00000000";
      };
    };
  };
}
