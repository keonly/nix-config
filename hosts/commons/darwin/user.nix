{
  pkgs,
  inputs,
  ...
} @ args: let
  username = args.specialArgs.username;
in {
  users.users.${username} = {
    name = username;
    isHidden = false;
    shell = pkgs.zsh;
    # NOTE: https://github.com/LnL7/nix-darwin/issues/811#issuecomment-2227415650
    uid = 501;
  };
  # NOTE: https://github.com/LnL7/nix-darwin/issues/811#issuecomment-2227415650
  users.knownUsers = [username];
}
