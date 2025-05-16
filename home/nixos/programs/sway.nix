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

      config = rec {
        modifier = mod;
        terminal = "kitty";
        startup = [
          {
            command = "swaymgs workspace 1";
          }
        ];

        fonts = {
          names = ["Iosevka Nerd Font Mono"];
          size = 12.0;
        };

        colors = {
          background = "#161616";
          focused = {
            border = "#e0e0e0";
            background = "#e0e0e0";
            text = "#000000";
            indicator = "#e0e0e0";
            childBorder = "#e0e0e0";
          };
          focusedInactive = {
            border = "#262626";
            background = "#262626";
            text = "#e0e0e0";
            indicator = "#262626";
            childBorder = "#262626";
          };
          unfocused = {
            border = "#262626";
            background = "#262626";
            text = "#e0e0e0";
            indicator = "#262626";
            childBorder = "#262626";
          };
          urgent = {
            border = "#f38ba8";
            background = "#f38ba8";
            text = "#000000";
            indicator = "#f38ba8";
            childBorder = "#f38ba8";
          };
          placeholder = {
            border = "#161616";
            background = "#161616";
            text = "#e0e0e0";
            indicator = "#161616";
            childBorder = "#161616";
          };
        };

        bars = [
          {
            command = "${pkgs.waybar}/bin/waybar";
          }
        ];

        gaps = {
          inner = 12;
          outer = 6;
        };

        keybindings = lib.attrsets.mergeAttrsList [
          (lib.attrsets.mergeAttrsList (map (num: let
            ws = toString num;
          in {
            "${mod}+${ws}" = "workspace ${ws}";
            "${mod}+Shift+${ws}" = "move container to workspace ${ws}";
          }) [1 2 3 4 5 6 7 8 9 0]))

          (lib.attrsets.concatMapAttrs (key: direction: {
              "${mod}+${key}" = "focus ${direction}";
              "${mod}+Shift+${key}" = "move ${direction}";
            }) {
              h = "left";
              j = "down";
              k = "up";
              l = "right";
            })

          {
            "${mod}+Return" = "exec --no-startup-id ${pkgs.wezterm}/bin/wezterm";
            "${mod}+space" = "exec --no-startup-id rofi -show drun -theme ${config.xdg.configHome}/rofi/style/launcher.rasi";
            "${mod}+Escape" = "exec --no-startup-id ${config.xdg.configHome}/rofi/script/powermenu.sh";

            "${mod}+q" = "kill";

            "${mod}+b" = "split h";
            "${mod}+v" = "split v";
            "${mod}+f" = "fullscreen toggle";
            "${mod}+a" = "focus parent";

            "${mod}+s" = "layout stacking";
            "${mod}+w" = "layout tabbed";
            "${mod}+e" = "layout toggle split";
            "${mod}+t" = "floating toggle";
            "${mod}+z" = "focus mode_toggle";

            "${mod}+Shift+c" = "move scratchpad";
            "${mod}+c" = "scratchpad show";

            "${mod}+Shift+r" = "exec swaymsg reload";
            "--release Print" = "exec --no-startup-id ${pkgs.sway-contrib.grimshot}/bin/grimshot copy area";
            "${mod}+Ctrl+q" = "exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -b 'Yes, exit sway' 'swaymsg exit'";
          }
        ];

        focus = {
          followMouse = false;
        };

        output = {
          "HDMI-A-3" = {
            "scale" = "1.5";
          };
        };

        seat = {
          "seat0" = {
            xcursor_theme = "Bibata-Modern-Classic 20";
          };
        };

        workspaceAutoBackAndForth = true;
      };

      wrapperFeatures = {gtk = true;};
      extraSessionCommands = ''
      '';
    };
  };
}
