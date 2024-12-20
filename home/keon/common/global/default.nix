{...}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  imports = [
    ./cli
    ./editor
    ./shell
    ./terminal
  ];

  # Enable home-manager
  programs.home-manager.enable = true;
  # Enable XDG
  xdg.enable = true;

  home = {
    username = "keon";
  };

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.11";
}
