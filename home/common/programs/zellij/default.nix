{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: let
  plugins = {
    zjstatus = builtins.fetchurl {
      url = "https://github.com/dj95/zjstatus/releases/download/v0.20.2/zjstatus.wasm";
      sha256 = "1n5q5zvxj6jvw46xv6irhbaqax9rssb5h1yvcgv6sa8na11kna1r";
    };
    vim-zellij-navigator = builtins.fetchurl {
      url = "https://github.com/hiasr/vim-zellij-navigator/releases/download/0.2.1/vim-zellij-navigator.wasm";
      sha256 = "0z8yi6w153ivnpxgkpq3pc0l6ad5la5jjl6778h819lm94z334n2";
    };
    zellij-autolock = builtins.fetchurl {
      url = "https://github.com/fresh2dev/zellij-autolock/releases/download/0.2.2/zellij-autolock.wasm";
      sha256 = "194fgd421w2j77jbpnq994y2ma03qzdlz932cxfhfznrpw3mdjb9";
    };
  };
in {
  options = {
    zellij.enable = lib.mkEnableOption "Whether to enable zellij";
  };

  config = lib.mkIf config.zellij.enable {
    programs.zellij = {
      enable = true;
    };

    xdg.configFile =
      {
        "zellij/config.kdl".source = ./config.kdl;
        "zellij/layouts" = {
          source = ./layouts;
          recursive = true;
        };
      }
      // lib.mapAttrs'
      (name: path:
        lib.nameValuePair "zellij/plugins/${name}.wasm" {source = path;})
      plugins;
  };
}
