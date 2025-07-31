{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  options = {
    wayland.enable = lib.mkEnableOption "Whether to enable hyprland as the wayland compositor";
  };

  config = lib.mkIf config.wayland.enable {
    programs = {
      uwsm = {
        enable = true;

        waylandCompositors = {
          hyprland = {
            prettyName = "Hyprland";
            comment = "Hyprland compositor managed by UWSM";
            binPath = "/run/current-system/sw/bin/Hyprland";
          };
        };
      };

      hyprland = {
        enable = true;
        package = inputs.hyprland.packages.${pkgs.system}.hyprland;

        withUWSM = true;
      };
    };
  };
}
