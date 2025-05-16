{
  lib,
  config,
  ...
}: {
  options = {
    waybar.enable = lib.mkEnableOption "Whether to enable waybar";
  };

  config = lib.mkIf config.waybar.enable {
    programs.waybar = {
      enable = true;

      style = ./style.css;

      settings = {
        mainBar = {
          position = "bottom";
          height = 32;
          spacing = 4;
          modules-left = [
            "sway/workspaces"
            "sway/mode"
          ];
          modules-center = [];
          modules-right = [
            "tray"
            "custom/separator"
            "wireplumber"
            "custom/separator"
            "cpu"
            "custom/separator"
            "memory"
            "custom/separator"
            "temperature"
            "custom/separator"
            "clock"
          ];

          "sway/workspaces" = {
            persistent-workspaces = {
              "1" = [];
              "2" = [];
              "3" = [];
              "4" = [];
              "5" = [];
              "6" = [];
            };
          };

          "custom/separator" = {
            format = "｜";
            tooltip = false;
          };

          "tray" = {
            spacing = 10;
          };

          "wireplumber" = {
            format = "{icon} {volume:2}%";
            format-muted = "  ";
            on-click = "pavucontrol-qt";
            format-icons = ["" "" ""];
          };

          "cpu" = {
            format = " {usage:2}%";
            tooltip = false;
          };

          "memory" = {
            format = " {percentage:2}%";
          };

          "temperature" = {
            thermal_zone = 2;
            hwmon-path = "/sys/class/hwmon/hwmon7/temp1_input";
            critical-threshold = 70;
            format-critical = " !!{temperatureC:2}°C!!";
            format = " {temperatureC:2}°C";
          };

          "clock" = {
            format = "󰥔 {:%b %d (%a) %H:%M} ";
          };
        };
      };
    };
  };
}
