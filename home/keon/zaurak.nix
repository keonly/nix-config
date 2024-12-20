{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./darwin
  ];

  # For some bizarre reasons, $XDG_ environment variable is not set in zsh but is properly set in fish.
  # While it is possible to set those in zsh also, I was too lazy and decided to stick with this stopgap.
  programs.kitty.settings.shell = "zsh --login -c 'nu --login --interactive'";
}
