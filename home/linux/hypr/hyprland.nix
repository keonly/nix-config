{...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.variables = ["--all"];

    settings = {
      ############
      # MONITORS #
      ############

      monitor = ",highres,auto,auto,bitdepth,10";

      ###############
      # APPEARANCES #
      ###############

      general = {
        gaps_in = 8;
        gaps_out = 16;
        border_size = 2;
        "col.active_border" = "rgba(f4f4f4ff)";
        "col.inactive_border" = "rgba(00000000)";

        layout = "dwindle";
      };

      cursor = {
        no_hardware_cursors = true;
        inactive_timeout = 5;
        hide_on_key_press = true;
      };

      decoration = {
        rounding = 9;
        blur = {
          enabled = true;
          size = 8;
          passes = 1;
          new_optimizations = true;
          ignore_opacity = false;
        };
        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
          color = "rgba(1a1a1aee)";
        };
      };

      animations = {
        enabled = false;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      misc = {
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
      };

      ############
      # KEYBINDS #
      ############

      "$mod" = "ALT";
      bind =
        [
          "$mod, return, exec, kitty"

          "$mod, Q, killactive"
          "$mod, F, fullscreen, 1"
          "$mod, M, fullscreen, 0"
          "$mod, S, pin"
          "$mod, T, togglefloating"

          "$mod, Tab, cyclenext"
          "$mod, Tab, bringactivetotop"

          "$mod, h, movefocus, l"
          "$mod, l, movefocus, r"
          "$mod, k, movefocus, u"
          "$mod, j, movefocus, d"

          "$mod SHIFT, h, movewindow, l"
          "$mod SHIFT, l, movewindow, r"
          "$mod SHIFT, k, movewindow, u"
          "$mod SHIFT, j, movewindow, d"

          "$mod, C, togglespecialworkspace"
          "$mod SHIFT, C, movetoworkspace, special"
        ]
        ++ (
          builtins.concatLists (builtins.genList (
              i: let
                ws = i + 1;
              in [
                "$mod, code:1${toString i}, workspace, ${toString ws}"
                "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
              ]
            )
            9)
        );

      input = {
        kb_layout = "us";
        kb_options = "grp:caps_toggle,korean:ralt_hangul,korean:rctrl_hanja";

        follow_mouse = 1;

        touchpad = {
          disable_while_typing = false;
          natural_scroll = false;
          scroll_factor = 0.3;
        };

        sensitivity = 0; # -1.0 to 1.0
      };
    };

    extraConfig = ''
      ##############
      # AUTOSTARTS #
      ##############

      exec-once = kime

      #########################
      # ENVIRONMENT VARIABLES #
      #########################

      env = XCURSOR_SIZE,20

      # Korean Input
      env = GTK_IM_MODULE,kime
      env = QT_IM_MODULE,kime
      env = XMODIFIERS,@im=kime
    '';
  };
}
