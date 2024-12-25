{pkgs, ...}: {
  imports = [
    ./bat
    ./btop
    ./eza.nix
    ./lazygit
    ./yazi
    ./zoxide.nix
  ];

  home.packages = with pkgs; [
    # core
    file
    tree
    which
    gnused

    # archives
    zip
    xz
    unzip
    p7zip
    gnutar

    # utils
    ripgrep
    jq
    yq-go
    fzf
    aria2
    socat
    nmap
    pre-commit
    gawk

    # misc
    cowsay
  ];
}
