{
  pkgs,
  inputs,
  ...
}: let
  system = "x86_64-linux";
in {
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${system}.hyprland;
    portalPackage = inputs.hyprland.packages.${system}.xdg-desktop-portal-hyprland;

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
        gaps_in = 4;
        gaps_out = 8;
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

      group = {
        "col.border_active" = "rgba(f4f4f4ff)";
        "col.border_inactive" = "rgba(00000000)";
        groupbar = {
          height = 8;
          render_titles = false;
          "col.active" = "rgba(f4f4f4ff)";
          "col.inactive" = "rgba(161616ff)";
        };
      };

      misc = {
        disable_hyprland_logo = false;
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
          "$mod, G, togglegroup"
          "$mod, T, togglefloating"

          # cycle windows
          "$mod, Tab, cyclenext"
          "$mod, Tab, bringactivetotop"

          # focus windows
          "$mod, h, movefocus, l"
          "$mod, j, movefocus, d"
          "$mod, k, movefocus, u"
          "$mod, l, movefocus, r"

          # move windows
          "$mod SHIFT, h, movewindow, l"
          "$mod SHIFT, j, movewindow, d"
          "$mod SHIFT, k, movewindow, u"
          "$mod SHIFT, l, movewindow, r"

          # special workspace
          "$mod, C, togglespecialworkspace"
          "$mod SHIFT, C, movetoworkspace, special"

          # scroll through workspaces
          "$mod, mouse_down, workspace, e+1"
          "$mod, mouse_up, workspace, e-1"
        ]
        ++ (
          builtins.concatLists (builtins.genList (
              i: let
                ws = i + 1;
              in [
                # switch workspaces
                "$mod, code:1${toString i}, workspace, ${toString ws}"
                # move to workspace
                "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
              ]
            )
            9)
        );

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

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

    plugins = [
      # inputs.hy3.packages.${system}.hy3
    ];
  };
}
