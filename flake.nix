{
  description = "nix configuration by keonly";

  outputs = inputs: import ./outputs inputs;

  inputs = {
    # Official nixpkgs Sources
    nixpkgs = {
      url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };
    nixpkgs-unstable = {
      url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };
    nixpkgs-stable = {
      url = "github:nixos/nixpkgs?ref=nixos-24.11";
    };

    # Darwin
    nixpkgs-darwin = {
      url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };
    nix-darwin = {
      url = "github:nix-darwin/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs-darwin";
    };

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    haumea = {
      url = "github:nix-community/haumea/v0.2.2";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
