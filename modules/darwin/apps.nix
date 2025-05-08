{
  config,
  lib,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    neovim
    git
    nushell
    gnugrep
    gnutar
  ];

  programs.zsh.enable = true;
  environment.shells = [
    pkgs.zsh
    pkgs.nushell
  ];

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };

    taps = [
      "homebrew/services"
      "FelixKratz/formulae" # JankyBorders
    ];

    brews = [
      "wget"
      "curl"
      "gnu-sed"
      "gnu-tar"
    ];

    cask = [
      "ghostty"
      {
        name = "librewolf";
        # https://librewolf.net/docs/faq/#why-is-librewolf-marked-as-broken
        args = {no_quarantine = true;};
      }
      "eloston-chromium" # Ungoogled Chromium
      "karabiner-elements"
      "raycast"
      "clocker"
    ];
  };
}
