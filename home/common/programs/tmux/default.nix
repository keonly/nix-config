{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: let
  catppuccinPlugin = pkgs.tmuxPlugins.mkTmuxPlugin {
    pluginName = "catppuccin";
    version = "v2.1.3";
    src = sources.tmux-catppuccin;
  };
  tmuxNvimPlugin = pkgs.tmuxPlugins.mkTmuxPlugin {
    pluginName = "tmux-nvim";
    version = "unstable-2025-03-19";
    src = sources.tmux-nvim;
  };
in {
  options = {
    tmux.enable = lib.mkEnableOption "Whether to enable tmux";
  };

  config = lib.mkIf config.tmux.enable {
    catppuccin.tmux.enable = false; # Upstream breaking change not merged

    programs.tmux = {
      enable = true;

      plugins = [
        catppuccinPlugin
        tmuxNvimPlugin
        {
          plugin = pkgs.tmuxPlugins.tmux-which-key;
          extraConfig = ''
            set -g @tmux-which-key-xdg-enable 1;
            set -g @tmux-which-key-disable-autobuild 1
            set -g @tmux-which-key-xdg-plugin-path "tmux-plugins/tmux-which-key"
          '';
        }
        {
          plugin = pkgs.tmuxPlugins.resurrect;
        }
        {
          plugin = pkgs.tmuxPlugins.continuum;
        }
      ];

      baseIndex = 1;
      clock24 = true;
      escapeTime = 0;
      keyMode = "vi";
      mouse = true;
      terminal = "tmux-256color";
      disableConfirmationPrompt = true;
      shell = "${pkgs.nushell}/bin/nu";

      extraConfig = builtins.readFile ./tmux.conf;
    };
  };
}
