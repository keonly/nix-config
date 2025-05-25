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
    };

    services.emacs.enable = true;
  };
}
