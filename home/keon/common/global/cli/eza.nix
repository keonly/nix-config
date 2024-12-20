{...}: {
  programs.eza = {
    enable = true;
    git = true;
    icons = "auto";

    # Shell integrations
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableZshIntegration = true;
  };
}
