{
  lib,
  vars,
  ...
}: let
  baseImports = lib.path.collectImports ../base;
  nixosImports = lib.path.collectImports ./.;
in {
  home.homeDirectory = "/home/${vars.username}";
  imports = baseImports ++ nixosImports;
  xdg.enable = true;
}
