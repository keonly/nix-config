{
  lib,
  vars,
  ...
}: let
  baseImports = lib.filesystem.listFilesNonRecursive ../base;
  nixosImports = lib.filesystem.listFilesNonRecursive ./.;
in {
  home.homeDirectory = "/home/${vars.username}";
  imports = baseImports ++ nixosImports;
  xdg.enable = true;
}
