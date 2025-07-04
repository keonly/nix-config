{
  inputs,
  lib,
  extraLib,
  vars,
  system,
  specialArgs,
  catppuccin,
  ...
} @ args: let
  name = "p16-23m3";

  modules = {
    darwinModules =
      [
        "modules/darwin"
        "hosts/laptop-${name}"
      ]
      |> lib.lists.map extraLib.path.relativeToRoot;
    homeModules =
      (
        [
          "home/darwin"
          "hosts/laptop-${name}/home.nix"
        ]
        |> lib.lists.map extraLib.path.relativeToRoot
      )
      ++ [catppuccin.homeModules.catppuccin];
  };
in {
  darwinConfigurations.${name} = extraLib.darwinSystem (modules // args);
}
