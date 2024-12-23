{
  lib,
  pkgs,
  ...
}: let
  catppuccin = pkgs.tmuxPlugins.mkTmuxPlugin {
    pluginName = "catppuccin";
    version = "v2.1.2";
    src = pkgs.fetchFromGitHub {
      owner = "catppuccin";
      repo = "tmux";
      rev = "2c4cb5a07a3e133ce6d5382db1ab541a0216ddc7";
      sha256 = "sha256-vBYBvZrMGLpMU059a+Z4SEekWdQD0GrDqBQyqfkEHPg=";
    };
  };
  which-key = pkgs.tmuxPlugins.mkTmuxPlugin {
    pluginName = "which-key";
    version = "unstable-2024-07-08";
    src = pkgs.fetchFromGitHub {
      owner = "alexwforsythe";
      repo = "tmux-which-key";
      rev = "1f419775caf136a60aac8e3a269b51ad10b51eb6";
      sha256 = "sha256-X7FunHrAexDgAlZfN+JOUJvXFZeyVj9yu6WRnxMEA8E=";
    };
  };
  tmux-nvim = pkgs.tmuxPlugins.mkTmuxPlugin {
    pluginName = "tmux-nvim";
    version = "unstable-2024-10-25";
    src = pkgs.fetchFromGitHub {
      owner = "aserowy";
      repo = "tmux.nvim";
      rev = "307bad95a1274f7288aaee09694c25c8cbcd6f1a";
      sha256 = "sha256-c/1swuJ6pIiaU8+i62Di/1L/b4V9+5WIVzVVSJJ4ls8=";
    };
  };
in {
  programs.tmux = {
    enable = true;

    plugins = [
      pkgs.tmuxPlugins.online-status
      pkgs.tmuxPlugins.battery
      catppuccin
      which-key
      tmux-nvim
    ];

    baseIndex = 1;
    clock24 = true;
    mouse = true;
    terminal = "tmux-256color";

    extraConfig = builtins.readFile ./tmux.conf;
  };
}
