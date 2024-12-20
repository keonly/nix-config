{
  self,
  inputs,
}: let
  inherit (inputs) nixpkgs home-manager nix-darwin;
  outputs = inputs.self.outputs;
in {
  mkNixosConfig = {
    hostname,
    extraModules ? [],
  }:
    nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs outputs;};
      modules =
        [
          ../hosts/${hostname}
        ]
        ++ extraModules;
    };

  mkDarwinConfig = {
    username,
    hostname,
    system,
    extraModules ? [],
  }:
    nix-darwin.lib.darwinSystem {
      specialArgs = {inherit inputs outputs system username;};
      modules =
        [
          ../hosts/${hostname}
        ]
        ++ extraModules;
    };

  mkHomeConfig = {
    username,
    hostname,
    system,
    extraModules ? [],
  }:
    home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = {inherit inputs outputs system username;};
      modules =
        [
          ../home/${username}/${hostname}.nix
        ]
        ++ extraModules;
    };
}
