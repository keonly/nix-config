{
  pkgs,
  config,
  lib,
  ...
}: {
  options = {
    sway.enable = lib.mkEnableOption "Whether to enable sway";
  };

  config = lib.mkIf config.sway.enable {
    wayland.windowManager.sway = {
      enable = true;
      package = pkgs.swayfx.override {
        extraOptions = ["--unsupported-gpu"];
      };
      checkConfig = false;

      config = import ./config.nix {inherit pkgs config lib;};
      extraConfig = ''
        corner_radius 4
        workspace 1
      '';

      systemd.enable = true;
      wrapperFeatures = {gtk = true;};
    };
  };
}
