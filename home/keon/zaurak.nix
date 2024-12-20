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

  programs.kitty.settings.shell = "zsh --login -c 'nu --login --interactive'";
}
