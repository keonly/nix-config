{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    strace
    ltrace
    tcpdump
    lsof

    bpftrace
    bpftop
    bpfmon

    sysstat
    iotop
    iftop
    htop

    pciutils
    usbutils
    parted

    kdePackages.kdialog
    kdePackages.qt5compat
    kdePackages.qtbase
    kdePackages.qtdeclarative
    kdePackages.qtdeclarative
    kdePackages.qtimageformats
    kdePackages.qtmultimedia
    kdePackages.qtpositioning
    kdePackages.qtquicktimeline
    kdePackages.qtsensors
    kdePackages.qtsvg
    kdePackages.qttools
    kdePackages.qttranslations
    kdePackages.qtvirtualkeyboard
    kdePackages.qtwayland
    kdePackages.syntax-highlighting
  ];

  environment.shells = with pkgs; [
    bashInteractive
    pkgs.nushell
  ];
}
