{lib, ...}: let
  baseImports = lib.path.collectImports ../base.nix;
  darwinImports = lib.path.collectImports ./.;
in {
  imports = baseImports ++ darwinImports;
}
