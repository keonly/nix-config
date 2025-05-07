{
  lib,
  vars,
  ...
}: let
  baseImports = lib.path.collectImports ../base;
  darwinImports = lib.path.collectImports ./.;
in {
  home.homeDirectory = "/Users/${vars.username}";
  imports = baseImports ++ darwinImports;
  xdg.enable = true;
}
