{lib, ...}: let
  baseImports = lib.filesystem.listFilesNonRecursive ../base.nix;
  darwinImports = lib.filesystem.listFilesNonRecursive ./.;
in {
  imports = baseImports ++ darwinImports;
}
