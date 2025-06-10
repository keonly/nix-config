{
  vars,
  nix-helpers,
  catppuccinModule,
  ...
}: {
  imports = nix-helpers.lib.path.collectImportsList ./. ++ [catppuccinModule];

  home = {
    inherit (vars) username;

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "24.11";
  };

  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "blue";
  };
}
