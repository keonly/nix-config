{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    bat.enable = lib.mkEnableOption "Whether to enable bat";
  };

  config = lib.mkIf config.bat.enable {
    programs.bat = {
      enable = true;

      themes = {
        carppuccin-mocha = {
          src = pkgs.fetchFromGitHub {
            owner = "keonly";
            repo = "bat";
            rev = "007a093995118e1b8aeba2ec9f9db1f785038aab";
            sha256 = "sha256-xwXhEaKfjNuiiWsBwGiShxxzQGDhM677QiIysAY1bKU=";
          };
          file = "themes/Catppuccin\ Mocha.tmTheme";
        };
      };

      config = {
        theme = "carppuccin-mocha";
      };
    };
  };
}
