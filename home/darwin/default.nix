{...}: {
  home = {
    homeDirectory = "/Users/keon";
  };

  imports = [
    ../common/global
  ];

  programs.kitty.darwinLaunchOptions = [
    "--single-instance"
    "--directory ~"
  ];
}
