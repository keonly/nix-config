{
  lib,
  inputs,
  darwinModules,
  homeModules ? [],
  vars,
  system,
  specialArgs,
  ...
}: let
  inherit (inputs) nixpkgs-darwin home-manager nix-darwin;

  mkHmBlock = import ./home-manager.nix;
  hmBlock = mkHmBlock {
    inherit homeModules specialArgs vars;
    homeManagerBaseModule = home-manager.darwinModules.home-manager;
  };
in
  nix-darwin.lib.darwinSystem {
    inherit system specialArgs;
    modules =
      darwinModules
      ++ [
        ({lib, ...}: {
          nixpkgs.pkgs = import nixpkgs-darwin {
            inherit system;
            config = {
              allowUnfree = true;
            };
          };
        })
      ]
      ++ (
        lib.optionals (homeModules != []) [hmBlock]
      );
  }
