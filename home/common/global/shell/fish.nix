{...}: {
  programs.fish = {
    enable = true;

    # Abbreviations
    shellAbbrs = {
      l = "less";
      k = {
        position = "command";
        expansion = "kubectl";
      };
      lg = {
        position = "command";
        expansion = "lazygit";
      };
      nv = {
        position = "command";
        expansion = "nvim";
      };
    };
  };
}
