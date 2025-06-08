{
  config,
  lib,
  pkgs,
  ...
}: {
  environment = {
    systemPackages = with pkgs; [
      git
      nushell
      gnugrep
      gnutar
    ];

    shells = with pkgs; [
      zsh
    ];
  };

  programs = {
    # https://github.com/nix-darwin/nix-darwin/issues/1380#issuecomment-2718171813
    zsh.enable = true;
  };

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };

    taps = [
    ];

    brews = [
      "wget"
      "curl"
      "gnu-sed"
      "gnu-tar"
    ];

    casks = [
      "ghostty"
      "eloston-chromium" # Ungoogled Chromium
      "karabiner-elements"
      "raycast"
      "colemak-dh"
    ];
  };
}
