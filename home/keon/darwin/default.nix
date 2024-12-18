{ ... }: {
  home = {
    homeDirectory = "/Users/keon";
  };

  imports =
  [
    ../common/home.nix
  ];
}
