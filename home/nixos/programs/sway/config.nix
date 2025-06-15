{
  pkgs,
  lib,
  config,
  ...
}: let
  mod = "Mod1";
in {
  modifier = mod;
  terminal = "ghostty";
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
      ws =
        if num == 0
        then "10"
        else toString num;
    in {
      "${mod}+${toString num}" = "workspace ${ws}";
      "${mod}+Shift+${toString num}" = "move container to workspace ${ws}";
    }) [0 9 8 7 6 5 4 3 2 1]))

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
      "${mod}+Return" = "exec --no-startup-id ${pkgs.ghostty}/bin/ghostty";
      "${mod}+space" = "exec --no-startup-id rofi -show drun -theme ${config.xdg.configHome}/rofi/style/launcher.rasi";
      "${mod}+Escape" = "exec --no-startup-id ${config.xdg.configHome}/rofi/script/powermenu.sh";
      "${mod}+Ctrl+space" = "exec --no-startup-id ${config.xdg.configHome}/rofi/script/emoji.sh";

      "${mod}+q" = "kill";

      "${mod}+x" = "split h";
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
      "${mod}+Ctrl+q" = "exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -b 'Yes, exit sway' 'swaymsg exit'";

      "${mod}+r" = "mode resize";
    }
  ];

  modes = {
    resize = {
      Escape = "mode default";
      Return = "mode default";

      Down = "resize shrink height 10 px";
      Left = "resize grow width 10 px";
      Right = "resize shrink width 10 px";
      Up = "resize grow height 10 px";

      h = "resize grow width 10 px";
      j = "resize shrink height 10 px";
      k = "resize grow height 10 px";
      l = "resize shrink width 10 px";
    };
  };

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

  workspaceAutoBackAndForth = false;
}
