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

  programs.kitty.settings.shell = "zsh --login -c 'fish --login --interactive'";
  programs.tmux.extraConfig = lib.mkAfter ''
    set -gu default-command
    set -g default-shell /run/current-system/sw/bin/fish
  '';
}