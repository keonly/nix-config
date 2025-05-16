{lib, ...}: let
  baseImports = [../base.nix];
  darwinImports =
    ./.
    |> lib.filesystem.listFilesRecursive
    |> lib.lists.filter (p: builtins.baseNameOf p != "default.nix");
in {
  imports = baseImports ++ darwinImports;
}
