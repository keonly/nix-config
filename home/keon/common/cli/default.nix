{pkgs, ...}:
{
  imports =
  [
    ./bat
    ./btop
    ./eza
    ./k9s
    ./lazygit
    ./yazi
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
    zoxide
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
