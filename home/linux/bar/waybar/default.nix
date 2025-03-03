{
  lib,
  config,
  ...
}: {
  options = {
    waybar.enable = lib.mkEnableOption "Whether to enable waybar";
  };

  config = lib.mkIf config.waybar.enable {
    programs.waybar = {
      enable = true;

      settings = {
        "default" = {
          region = "us-west-2";
          output = "json";
        };
      };
    };
  };
}
