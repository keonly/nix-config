{
  self,
  inputs,
}: let
  inherit (inputs) nixpkgs home-manager;
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

  mkHomeConfig = {
    username,
    hostname,
    system,
    extraModules ? [],
  }:
    home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = {inherit inputs outputs;};
      modules =
        [
          ../home/${username}/${hostname}.nix
        ]
        ++ extraModules;
    };
}
