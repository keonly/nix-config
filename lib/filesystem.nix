{lib, ...}: {
  listFilesNonRecursive = src:
    src
    |> builtins.readDir
    |> builtins.attrNames
    |> lib.lists.map (name: lib.path.subpath.join [src name]);
}
