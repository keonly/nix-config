{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    aerospace.enable = lib.mkEnableOption "Whether to enable aerospace";
  };

  config = lib.mkIf config.aerospace.enable {
    programs.aerospace = {
      enable = true;

      userSettings =
        ./aerospace.toml
        |> builtins.readFile
        |> builtins.fromTOML;
    };
  };
}
