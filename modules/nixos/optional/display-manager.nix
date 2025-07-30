{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: let
  sddm-theme = inputs.silent-sddm.packages.${pkgs.system}.default.override {
    theme = "catppuccin-mocha";
  };
in {
  options = {
    display-manager.enable = lib.mkEnableOption "Whether to enable sddm as the display manager";
  };

  config = lib.mkIf config.display-manager.enable {
    environment.systemPackages = [
      sddm-theme
      sddm-theme.test
    ];
    qt.enable = true;

    services.displayManager.sddm = {
      enable = true;
      package = pkgs.kdePackages.sddm;
      extraPackages = sddm-theme.propagatedBuildInputs;
      theme = sddm-theme.pname;

      wayland.enable = true;
      settings = {
        General = {
          GreeterEnvironment = "QML2_IMPORT_PATH=${sddm-theme}/share/sddm/themes/${sddm-theme.pname}/components/,QT_IM_MODULE=qtvirtualkeyboard";
          InputMethod = "qtvirtualkeyboard";
        };
      };
    };
  };
}
