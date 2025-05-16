{
  pkgs ? import <nixpkgs> {},
  lib,
  config,
  ...
}: {
  config = lib.mkIf config.ghostty.enable {
    programs.ghostty = {
      settings = {
        font-thicken = true;
        font-thicken-strength = 0;
      };
    };
  };
}
