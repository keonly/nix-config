{
  pkgs,
  lib,
  config,
  nvf-config,
  ...
}: let
  neovim = nvf-config.packages.${pkgs.system}.default;
in {
  options = {
    neovim.enable = lib.mkEnableOption "Whether to enable neovim with nvf";
  };

  config = lib.mkIf config.neovim.enable {
    home = {
      packages = [neovim];
      sessionVariables = {
        EDITOR = "nvim";
        MANPAGER = "nvim +Man!";
      };
    };
  };
}
