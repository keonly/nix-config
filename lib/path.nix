{
  lib,
  haumea,
  ...
}: {
  collectImports = src:
    haumea.lib.collectModules {
      inherit src;
      filter = path: type:
        type == "directory" || (lib.strings.hasSuffix ".nix" (baseNameOf path) && baseNameOf path != "default.nix");
    };
}
