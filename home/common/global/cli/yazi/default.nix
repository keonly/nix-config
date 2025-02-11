{...}: {
  programs.yazi = {
    enable = true;

    # Shell integrations
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableNushellIntegration = true;
    enableZshIntegration = true;

    theme = import ./theme.nix;

    # TODO: Plugins
  };
}
