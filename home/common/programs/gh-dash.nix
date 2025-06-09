{
  lib,
  config,
  ...
}: {
  options = {
    gh-dash.enable = lib.mkEnableOption "Whether to enable gh-dash";
  };

  config = lib.mkIf config.gh-dash.enable {
    programs.gh-dash = {
      enable = true;

      settings = {
        theme = {
          colors = {
            text = {
              primary = "#f4f4f4";
              secondary = "#89b4fa";
              inverted = "#000000";
              faint = "#e0e0e0";
              warning = "#f9e2af";
              success = "#a6e2a1";
              error = "#f38ba8";
            };

            background = {
              delected = "#262626";
            };

            border = {
              primary = "#f4f4f4";
              secondary = "#393939";
              faint = "#262626";
            };
          };
        };
      };
    };
  };
}
