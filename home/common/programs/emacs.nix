{
  lib,
  config,
  pkgs,
  doom-config,
  ...
}: {
  options = {
    emacs.enable = lib.mkEnableOption "Whether to enable doom emacs";
  };

  config = lib.mkIf config.emacs.enable {
    programs.doom-emacs = {
      enable = true;
      emacs = pkgs.emacs-pgtk;
      doomDir = doom-config;
      experimentalFetchTree = true;
    };

    services.emacs = {
      enable = true;
      client = {
        enable = true;
        arguments = ["-n -c"];
      };
      socketActivation.enable = true;
    };

    # LSP Servers
    home.packages = with pkgs; [
      # C / C++
      clang-tools

      # Go
      gopls

      # Javascript / Typescript / JSON / CSS / HTML
      nodePackages.typescript-language-server
      nodePackages.vscode-langservers-extracted

      # Kotlin
      kotlin-language-server

      # LaTeX
      texlab

      # Lua
      lua-language-server # attribute name on 24.11-unstable; aliases: sumneko-…

      # Nix
      nil

      # Python
      pyright

      # Rust
      rust-analyzer

      # Scala
      metals

      # Bash
      nodePackages.bash-language-server

      # YAML
      yaml-language-server
    ];
  };
}
