{
  config,
  vars,
  ...
}: let
  inherit (vars) username;
in {
  users = {
    mutableUsers = true; # TODO: Pre-configure password and set this to false

    groups = {
      "${username}" = {};
    };

    users."${username}" = {
      isNormalUser = true;
      home = "/home/${username}";
      extraGroups = [
        username
        "users"
        "networkmanager"
        "wheel"
      ];
    };
  };
}
