{
  pkgs,
  config,
  lib,
  ...
}: let
  mod = "Mod1";
in {
  wayland.windowManager.sway = {
    enable = true;
    extraOptions = ["--unsupported-gpu"];

    config = rec {
      modifier = mod;
      terminal = "kitty";

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
          fonts = {
            names = ["Iosevka Nerd Font Mono"];
            size = 14.0;
          };
          colors = {
            background = "#161616";
            statusline = "#e0e0e0";
            separator = "#161616";
            focusedBackground = "#161616";
            focusedStatusline = "#e0e0e0";
            focusedSeparator = "#161616";
            focusedWorkspace = {
              border = "#161616";
              background = "#89b4fa";
              text = "#000000";
            };
            activeWorkspace = {
              border = "#161616";
              background = "#525252";
              text = "#e0e0e0";
            };
            inactiveWorkspace = {
              border = "#161616";
              background = "#161616";
              text = "#e0e0e0";
            };
            urgentWorkspace = {
              border = "#161616";
              background = "#f38ba8";
              text = "#000000";
            };
            bindingMode = {
              border = "#161616";
              background = "#cba6f7";
              text = "#e0e0e0";
            };
          };
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
          "${mod}+Return" = "exec --no-startup-id ${pkgs.kitty}/bin/kitty";
          "${mod}+space" = "exec --no-startup-id wofi --show drun,run";

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

    systemd.enable = true;
    wrapperFeatures = {gtk = true;};
    extraSessionCommands = ''
    '';
  };
}
