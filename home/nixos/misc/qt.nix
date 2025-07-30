{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  qt = {
    enable = true;

    style.name = "kvantum";
    platformTheme.name = "kvantum";
  };
}
