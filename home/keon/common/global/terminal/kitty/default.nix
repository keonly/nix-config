{
  pkgs,
  lib,
  ...
}: {
  programs.kitty = {
    enable = true;

    extraConfig = lib.readFile ./theme.conf;

    font = {
      name = "Iosevka Nerd Font Mono";
      size = 16;
    };

    settings = {
      enabled_layouts = "splits";
      confirm_os_window_close = "0";
      shell = "fish";
      editor = "nvim";
      cursor_shape = "beam";
      focus_follows_mouse = "true";
      enable_audio_bell = "no";

      url_style = "curly";
      window_margin_width = "0.0";
      window_padding_width = "0.0";
      window_border_width = "0.0";
      background_opacity = "1.0";

      # img preview
      allow_remote_control = "yes";
      close_on_child_death = "no";
      listen_on = "unix:/tmp/mykitty";
    };

    shellIntegration = {
      enableBashIntegration = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
    };
  };
}
