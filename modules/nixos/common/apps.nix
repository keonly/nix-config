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
  ];

  environment.shells = with pkgs; [
    bashInteractive
    pkgs.nushell
  ];
}
