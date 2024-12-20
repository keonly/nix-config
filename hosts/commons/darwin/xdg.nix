{
  pkgs,
  inputs,
  ...
} @ args: let
  homeDirectory = "/Users/${args.specialArgs.username}";
in {
  launchd.user.envVariables = rec {
    XDG_CACHE_HOME = "${homeDirectory}/.cache";
    XDG_CONFIG_HOME = "${homeDirectory}/.config";
    XDG_DATA_HOME = "${homeDirectory}/.local/share";
    XDG_STATE_HOME = "${homeDirectory}/.local/state";

    # Not officially in the specification
    XDG_BIN_HOME = "${homeDirectory}/.local/bin";
    PATH = [
      "${XDG_BIN_HOME}"
    ];
  };
}
