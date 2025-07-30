{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    quickshell.enable = lib.mkEnableOption "Whether to enable quickshell";
  };

  config = lib.mkIf config.quickshell.enable {
    programs.quickshell = {
      enable = true;
      package = inputs.quickshell.packages.${pkgs.system}.default;

      systemd.enable = true;
    };

    xdg.configFile = {
      "quickshell" = {
        source = ./ii;
        recursive = true;
      };
    };

    home.packages = with pkgs; [
      kdePackages.kdialog
      kdePackages.qt5compat
      kdePackages.qtbase
      kdePackages.qtdeclarative
      kdePackages.qtdeclarative
      kdePackages.qtimageformats
      kdePackages.qtmultimedia
      kdePackages.qtpositioning
      kdePackages.qtquicktimeline
      kdePackages.qtsensors
      kdePackages.qtsvg
      kdePackages.qttools
      kdePackages.qttranslations
      kdePackages.qtvirtualkeyboard
      kdePackages.qtwayland
      kdePackages.syntax-highlighting

      adw-gtk3
      python313Packages.kde-material-you-colors
      material-symbols
      rubik
    ];

    home.sessionVariables.ILLOGICAL_IMPULSE_VIRTUAL_ENV = "~/.local/state/quickshell/.venv";
  };
}
