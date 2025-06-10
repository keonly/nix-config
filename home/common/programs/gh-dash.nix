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
      };
    };
  };
}
