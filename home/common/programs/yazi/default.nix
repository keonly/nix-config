{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: let
  yaziPlugins = sources.yazi-plugins;
  yaziStarship = sources.yazi-starship;
  starship-path = ./starship.toml;
in {
  options = {
    yazi.enable = lib.mkEnableOption "Whether to enable yazi";
  };

  config = lib.mkIf config.yazi.enable {
    # Disable yazi because it's kinda hard to monkeypatch other options
    catppuccin.yazi.enable = false;

    programs.yazi = {
      enable = true;

      # Shell integrations
      enableBashIntegration = true;
      enableFishIntegration = true;
      enableNushellIntegration = true;
      enableZshIntegration = true;

      settings = {
        mgr = {
          sort_dir_first = true;
          show_hidden = true;
        };
      };

      theme = import ./theme.nix;

      keymap = {
        mgr = {
          prepend_keymap = [
            {
              on = ["c" "m"];
              run = "plugin chmod";
              desc = "Chmod on selected files";
            }
            {
              on = ["<C-d>"];
              run = "plugin diff";
              desc = "Diff the selected with the hovered file";
            }
            {
              on = ["M"];
              run = "plugin mount";
              desc = "Open mount manager";
            }
          ];
        };
      };

      plugins = {
        chmod = "${yaziPlugins}/chmod.yazi";
        diff = "${yaziPlugins}/diff.yazi";
        full-border = "${yaziPlugins}/full-border.yazi";
        git = "${yaziPlugins}/git.yazi";
        mount = "${yaziPlugins}/mount.yazi";
        starship = yaziStarship;
      };

      initLua = ''
        require("full-border"):setup()
        require("git"):setup()
        require("starship"):setup({ config_file = "${starship-path}" })
      '';
    };
  };
}
