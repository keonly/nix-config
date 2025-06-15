{
  pkgs,
  lib,
  config,
  ...
}: let
  catppuccinPlugin = pkgs.tmuxPlugins.mkTmuxPlugin {
    pluginName = "catppuccin";
    version = "v2.1.3";
    src = pkgs.fetchFromGitHub {
      owner = "catppuccin";
      repo = "tmux";
      rev = "v2.1.3";
      sha256 = "sha256-Is0CQ1ZJMXIwpDjrI5MDNHJtq+R3jlNcd9NXQESUe2w=";
    };
  };
  # whichKeyPlugin = pkgs.tmuxPlugins.mkTmuxPlugin {
  #   pluginName = "which-key";
  #   version = "unstable-2024-07-08";
  #   src = pkgs.fetchFromGitHub {
  #     owner = "alexwforsythe";
  #     repo = "tmux-which-key";
  #     rev = "1f419775caf136a60aac8e3a269b51ad10b51eb6";
  #     sha256 = "sha256-X7FunHrAexDgAlZfN+JOUJvXFZeyVj9yu6WRnxMEA8E=";
  #   };
  # };
  tmuxNvimPlugin = pkgs.tmuxPlugins.mkTmuxPlugin {
    pluginName = "tmux-nvim";
    version = "unstable-2025-03-19";
    src = pkgs.fetchFromGitHub {
      owner = "aserowy";
      repo = "tmux.nvim";
      rev = "2c1c3be0ef287073cef963f2aefa31a15c8b9cd8";
      sha256 = "sha256-/XIjqQr9loWVTXZDaZx2bSQgco46z7yam50dCnM5p1U=";
    };
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
