{
  pkgs,
  lib,
  config,
  ...
}: let
  inherit (config.lib.formats.rasi) mkLiteral;
  foregroundColour = mkLiteral "#e0e0e0";
  backgroundColour = mkLiteral "#161616";
  urgentColour = mkLiteral "#f38ba8";
in {
  "*" = {
    border-colour = foregroundColour;
    handle-colour = foregroundColour;
    background-colour = backgroundColour;
    foreground-colour = backgroundColour;

    normal-background = backgroundColour;
    normal-foreground = foregroundColour;
    urgent-background = urgentColour;
    urgent-foreground = backgroundColour;
    active-background = foregroundColour;
    acrive-foreground = backgroundColour;

    selected-normal-background = foregroundColour;
    selected-normal-foreground = backgroundColour;
    selected-urgent-background = foregroundColour;
    selected-urgent-foreground = backgroundColour;
    selected-active-background = urgentColour;
    selected-active-foreground = backgroundColour;

    font = mkLiteral "Iosevka Nerd Font Mono 16";
  };

  "window" = {
    transparency = mkLiteral "real";
    location = mkLiteral "center";
    anchor = mkLiteral "center";
    fullscreen = false;
    width = mkLiteral "600px";
    x-offset = mkLiteral "0px";
    y-offset = mkLiteral "0px";
    enabled = true;
    margin = mkLiteral "0px";
    padding = mkLiteral "0px";
    border = mkLiteral "2px solid";
    border-radius = mkLiteral "0px";
    border-color = foregroundColour;
    cursor = mkLiteral "default";
    background-color = backgroundColour;
  };
}
