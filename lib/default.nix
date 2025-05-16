{
  lib,
  haumea,
  ...
}: {
  attrsets = import ./attrsets.nix {inherit lib;};
  path = import ./path.nix {inherit lib haumea;};

  darwinSystem = args: import ./darwin-system.nix (args // {inherit lib;});
  nixosSystem = args: import ./nixos-system.nix (args // {inherit lib;});
}
