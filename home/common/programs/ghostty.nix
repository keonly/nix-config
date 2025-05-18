{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    ghostty.enable = lib.mkEnableOption "Whether to enable ghostty";
  };

  config = lib.mkIf config.ghostty.enable {
    programs.ghostty = {
      enable = true;
      package =
        if pkgs.stdenv.isDarwin
        then null # pkgs.ghostty is broken on darwin
        else pkgs.ghostty;

      enableBashIntegration = true;
      enableZshIntegration = true;

      settings = lib.mkMerge [
        {
          font-family = "Iosevka Nerd Font Mono";
          font-size =
            if pkgs.stdenv.isDarwin
            then 16
            else 14;
          theme = "carppuccin-mocha";
        }
        (lib.mkIf pkgs.stdenv.isDarwin {
          font-thicken = true;
          font-thicken-strength = 0;
        })
        (lib.mkIf pkgs.stdenv.isLinux {
          command = "${pkgs.bash}/bin/bash --login -c 'nu --login --interactive'";
        })
      ];

      themes = {
        carppuccin-mocha = {
          background = "161616";
          cursor-color = "f5e0dc";
          foreground = "f4f4f4";
          palette = [
            "0=#393939"
            "1=#f38ba8"
            "2=#a6e3a1"
            "3=#f9e2af"
            "4=#89b4fa"
            "5=#f5c2e7"
            "6=#94e2d5"
            "7=#e0e0e0"
            "8=#525252"
            "9=#f38ba8"
            "10=#a6e3a1"
            "11=#f9e2af"
            "12=#89b4fa"
            "13=#f5c2e7"
            "14=#94e2d5"
            "15=#c6c6c6"
          ];
          selection-background = "353749";
          selection-foreground = "f4f4f4";
        };
      };
    };
  };
}
