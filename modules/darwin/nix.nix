{
  config,
  pkgs,
  vars,
  ...
} @ args: {
  nix = {
    gc = {
      interval = {
        Hour = 0;
        Minute = 0;
      };
    };
  };
}
