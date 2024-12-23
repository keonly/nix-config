{...}: {
  programs.zoxide = {
    enable = true;

    # Shell integrations
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableNushellIntegration = true;
    enableZshIntegration = true;
  };
}
