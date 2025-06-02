{
  lib,
  config,
  ...
}: {
  options = {
    spotify-player.enable = lib.mkEnableOption "Whether to enable spotify-player";
  };

  config = lib.mkIf config.spotify-player.enable {
    programs.spotify-player = {
      enable = true;

      settings = {
        theme = "carppuccin-mocha";
      };
      themes = [
        {
          name = "carppuccin-mocha";
          palette = {
            background = "#161616";
            foreground = "#f4f4f4";
            black = "#161616";
            blue = "#89b4fa";
            cyan = "#89dceb";
            green = "#a6e3a1";
            magenta = "#cba6f7";
            red = "#f38ba8";
            white = "#f4f4f4";
            yellow = "#f9e2af";
            bright_black = "#161616";
            bright_blue = "#89b4fa";
            bright_cyan = "#89dceb";
            bright_green = "#a6e3a1";
            bright_magenta = "#cba6f7";
            bright_red = "#f38ba8";
            bright_white = "#f4f4f4";
            bright_yellow = "#f9e2af";
          };
          component_style = {
            selection = {
              bg = "#262626";
              modifiers = ["Bold"];
            };
            block_title = {fg = "Magenta";};
            playback_track = {
              fg = "Cyan";
              modifiers = ["Bold"];
            };
            playback_album = {fg = "Yellow";};
            playback_metadata = {fg = "Blue";};
            playback_progress_bar = {
              bg = "#262626";
              fg = "Green";
            };
            current_playing = {
              fg = "Green";
              modifiers = ["Bold"];
            };
            page_desc = {
              fg = "Cyan";
              modifiers = ["Bold"];
            };
            table_header = {fg = "Blue";};
            border = {};
            playback_status = {
              fg = "Cyan";
              modifiers = ["Bold"];
            };
            playback_artists = {
              fg = "Cyan";
              modifiers = ["Bold"];
            };
            playlist_desc = {fg = "#c6c6c6";};
          };
        }
      ];
    };
  };
}
