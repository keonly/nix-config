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
  name = "nzxt-h1";

  modules = {
    nixosModules =
      (
        [
          "modules/nixos"
          "hosts/desktop-${name}"
        ]
        |> lib.lists.map extraLib.path.relativeToRoot
      )
      ++ [catppuccin.nixosModules.catppuccin];
    homeModules =
      (
        [
          "home/nixos"
          "hosts/desktop-${name}/home.nix"
        ]
        |> lib.lists.map extraLib.path.relativeToRoot
      )
      ++ [catppuccin.homeModules.catppuccin];
  };
in {
  nixosConfigurations.${name} = extraLib.nixosSystem (modules // args);
}
