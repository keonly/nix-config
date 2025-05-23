{lib, ...}: let
  baseImports = [../base];
  nixosImports =
    ./.
    |> lib.filesystem.listFilesRecursive
    |> lib.lists.filter (p: builtins.baseNameOf p != "default.nix");
in {
  imports = baseImports ++ nixosImports;
}
