{
  pkgs,
  config,
  lib,
  ...
}: let
  mod = "Mod1";
in {
  options = {
    sway.enable = lib.mkEnableOption "Whether to enable sway";
  };

  config = lib.mkIf config.sway.enable {
    wayland.windowManager.sway = {
      enable = true;
      systemd.enable = true;
      extraOptions = ["--unsupported-gpu"];

      config = import ./config.nix {inherit pkgs config lib;};
      extraConfig = ''
        workspace 1
      '';

      wrapperFeatures = {gtk = true;};
    };
  };
}
