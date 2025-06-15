{
  pkgs,
  config,
  lib,
  ...
}: let
  inherit (config) xdg;
in {
  options = {
    rofi.enable = lib.mkEnableOption "Whether to enable rofi";
  };

  config = lib.mkIf config.rofi.enable {
    programs.rofi = {
      enable = true;
      configPath = "${xdg.configHome}/rofi/config.rasi";
      package = pkgs.rofi-wayland;
      plugins = with pkgs; [
        rofi-power-menu
        rofi-emoji-wayland
        rofi-calc
        rofi-screenshot
        rofi-network-manager
        rofi-vpn
      ];
    };

    xdg.configFile = {
      "rofi/shared" = {
        enable = true;
        source = ./config/shared;
        recursive = true;
      };
      "rofi/style" = {
        enable = true;
        source = ./config/style;
        recursive = true;
      };
      "rofi/script/powermenu.sh" = {
        enable = true;
        text = builtins.readFile ./config/script/powermenu.sh;
        executable = true;
      };
      "rofi/script/emoji.sh" = {
        enable = true;
        text = builtins.readFile ./config/script/emoji.sh;
        executable = true;
      };
      "rofi/config.rasi" = {
        enable = true;
        text = builtins.readFile ./config/config.rasi;
      };
    };
  };
}
