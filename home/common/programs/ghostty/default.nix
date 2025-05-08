{
  pkgs ? import <nixpkgs> {},
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
        then pkgs.hello # pkgs.ghostty is currently broken on darwin
        else pkgs.ghostty;

      settings = {
        font-family = "Iosevka Nerd Font Mono";
        font-size = 16;

        # https://ghostty.org/docs/config/reference#command
        #  To resolve issues:
        #    1. https://github.com/ryan4yin/nix-config/issues/26
        #    2. https://github.com/ryan4yin/nix-config/issues/8
        #  Spawn a nushell in login mode via `bash`
        command = "${pkgs.bash}/bin/bash --login -c 'nu --login --interactive'";
      };
    };
  };
}
