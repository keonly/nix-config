{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    xdg-portal.enable = lib.mkEnableOption "Whether to enable XDG desktop integration";
  };

  config = lib.mkIf config.xdg-portal.enable {
    xdg.portal = {
      enable = true;

      config = {
        common = {
          default = [
            "gtk"
          ];
        };
      };

      # Sets environment variable NIXOS_XDG_OPEN_USE_PORTAL to 1.
      # This will make xdg-open use the portal to open programs,
      # which resolves bugs involving programs opening inside FHS envs
      # or with unexpected env vars set from wrappers.
      xdgOpenUsePortal = true;

      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
      ];
    };
  };
}
