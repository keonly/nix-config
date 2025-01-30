{
  inputs,
  lib,
  ...
}: {
  imports = [inputs.hyprpanel.homeManagerModules.hyprpanel];

  programs.hyprpanel = {
    # Enable the module.
    # Default: false
    enable = true;
    overlay.enable = true;

    # Automatically restart HyprPanel with systemd.
    # Useful when updating your config so that you
    # don't need to manually restart it.
    # Default: false
    systemd.enable = true;

    # Add '/nix/store/.../hyprpanel' to your
    # Hyprland config 'exec-once'.
    # Default: false
    hyprland.enable = true;

    # Fix the overwrite issue with HyprPanel.
    # See below for more information.
    # Default: false
    overwrite.enable = true;

    # Import a theme from './themes/*.json'.
    # Default: ""
    theme = "catppuccin_mocha";

    # Override the final config with an arbitrary set.
    # Useful for overriding colors in your selected theme.
    # Default: {}
    override = builtins.fromJSON (lib.readFile ./catppuccin_mocha_override.json);

    # Configure bar layouts for monitors.
    # See 'https://hyprpanel.com/configuration/panel.html'.
    # Default: null
    layout = {
      "bar.layouts" = {
        "0" = {
          left = ["dashboard" "workspaces"];
          middle = ["media"];
          right = ["volume" "systray" "clock" "notifications"];
        };
      };
    };

    # Configure and theme almost all options from the GUI.
    # Options that require '{}' or '[]' are not yet implemented,
    # except for the layout above.
    # See 'https://hyprpanel.com/configuration/settings.html'.
    # Default: <same as gui>
    settings = {
      scalingPriority = "hyprland";

      bar = {
        launcher.autoDetectIcon = true;
        clock = {
          format = "%a %b %d  %H:%M:%S";
        };
        workspaces = {
          show_numbered = true;
          numbered_active_indicator = "highlight";
          spacing = 0;
        };
      };

      menus = {
        clock = {
          time = {
            military = true;
            hideSeconds = true;
          };
          weather = {
            location = "Seoul";
            unit = "metric";
          };
        };

        dashboard = {
          directories.enabled = false;
          stats.enable_gpu = true;
        };
      };

      theme = {
        bar = {
          floating = true;
          transparent = false;

          buttons = {
            padding_x = "0.5rem";
            y_margins = "0.0rem";
            workspaces = {
              numbered_inactive_padding = "0.4em";
              numbered_active_highlight_padding = "0.4em";
            };
          };

          outer_spacing = "0.0rem";
          margin_sides = "16px";
        };

        font = {
          name = "Iosevka Nerd Font Mono";
          size = "16px";
        };
      };
    };
  };
}
