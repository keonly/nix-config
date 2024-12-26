{pkgs, ...}: {
  imports = [./fontconfig.nix];
  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      sarasa-gothic
      nerd-fonts.iosevka
      iosevka
    ];
  };
}
