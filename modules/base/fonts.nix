{
  lib,
  config,
  pkgs,
  ...
}: {
  options = {
    fonts.enable = lib.mkEnableOption "Whether to install fonts";
  };

  config = lib.mkIf config.fonts.enable {
    fonts = {
      packages = with pkgs; [
        noto-fonts
        noto-fonts-cjk-sans
        noto-fonts-emoji
        sarasa-gothic
        iosevka
        nerd-fonts.iosevka
        nerd-fonts.symbols-only
      ];
    };
  };
}
