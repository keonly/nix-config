{
  pkgs,
  lib,
  ...
}: {
  i18n = {
    inputMethod = {
      # Temporary fix: https://github.com/Riey/kime/issues/693#issuecomment-2612017513
      package = lib.mkForce (pkgs.kime.overrideAttrs {RUSTFLAGS = "-Clink-args=-L./target/release";});
      enable = true;
      type = "kime";
    };
  };
}
