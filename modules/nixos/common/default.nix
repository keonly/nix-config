{lib, ...}: {
  imports =
    ./.
    |> lib.filesystem.listFilesRecursive
    |> lib.lists.filter (p: builtins.baseNameOf p != "default.nix");
}
