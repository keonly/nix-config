{
  config,
  pkgs,
  lib,
  ...
}: {
  options = {
    theme.enable = lib.mkEnableOption "Whether to enable global catppuccin theming";
  };

  config = lib.mkIf config.theme.enable {
    catppuccin = {
      enable = true;
      flavor = "mocha";
      accent = "blue";
    };
  };
}
