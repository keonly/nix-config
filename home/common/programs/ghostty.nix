{
  config,
  pkgs,
  lib,
  inputs,
  sources,
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
        }
        (lib.mkIf pkgs.stdenv.isDarwin {
          font-thicken = true;
          font-thicken-strength = 0;
        })
        (lib.mkIf pkgs.stdenv.isLinux {
          command = "${pkgs.bash}/bin/bash --login -c 'nu --login --interactive'";
        })
      ];
    };
  };
}
