{
  lib,
  inputs,
  nixosModules,
  homeModules ? [],
  vars,
  system,
  specialArgs,
  ...
}: let
  inherit (inputs) nixpkgs home-manager catppuccin;

  mkHmBlock = import ./home-manager.nix;
  hmBlock = mkHmBlock {
    inherit homeModules specialArgs vars;
    homeManagerBaseModule = home-manager.nixosModules.home-manager;
  };
in
  nixpkgs.lib.nixosSystem {
    inherit system specialArgs;
    modules =
      nixosModules
      ++ (
        lib.optionals (homeModules != []) [hmBlock]
      );
  }
