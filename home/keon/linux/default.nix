{ ... }: {
  home = {
    homeDirectory = "/home/keon";
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  imports =
  [
    ../common/home.nix
  ];
}
