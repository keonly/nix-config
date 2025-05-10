{
  lib,
  vars,
  ...
}: let
  baseImports = lib.filesystem.listFilesNonRecursive ../base;
  darwinImports = lib.filesystem.listFilesNonRecursive ./.;
in {
  home.homeDirectory = "/Users/${vars.username}";
  imports = baseImports ++ darwinImports;
  xdg.enable = true;
}
