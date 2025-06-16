{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    uutils-coreutils-noprefix # cross-platform reimplementation of the GNU coreutils in Rust
    npins
  ];
}
