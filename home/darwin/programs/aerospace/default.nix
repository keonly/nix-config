{
  lib,
  config,
  ...
}: {
  options = {
    aerospace.enable = lib.mkEnableOption "Whether to enable aerospace";
  };

  config = lib.mkIf config.aerospace.enable {
    programs.aerospace = {
      enable = true;

      userSettings = builtins.fromTOML ./aerospace.toml;
    };
  };
}
