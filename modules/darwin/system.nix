{
  pkgs,
  vars,
  ...
}: {
  system = {
    stateVersion = 5;

    primaryUser = vars.username;

    defaults = {
      menuExtraClock.Show24Hour = true;

      dock = {
        autohide = true;
        show-recents = false;
        mru-spaces = false;
        expose-group-apps = true;

        wvous-bl-corner = 2; # bottom left: Mission Control
        wvous-br-corner = 4; # bottom right: Desktop
      };

      finder = {
        _FXShowPosixPathInTitle = true; # Show full path in finder title
        AppleShowAllExtensions = true; # Show all file extensions
        FXEnableExtensionChangeWarning = false; # Disable warning when changing file extension
        QuitMenuItem = true; # Enable quit menu item
        ShowPathbar = true; # Show path bar
        ShowStatusBar = true; # Show status bar
      };

      trackpad = {
        Clicking = true; # Enable tap to click
        TrackpadRightClick = true; # Enable two finger right click
        TrackpadThreeFingerDrag = true; # Enable three finger drag
      };

      universalaccess = {
        reduceMotion = true;
      };

      NSGlobalDomain = {
        AppleInterfaceStyle = "Dark"; # Enable dark mode

        NSAutomaticCapitalizationEnabled = false; # Disable auto capitalization
        NSAutomaticDashSubstitutionEnabled = false; # Disable auto dash substitution
        NSAutomaticPeriodSubstitutionEnabled = false; # Disable auto period substitution
        NSAutomaticQuoteSubstitutionEnabled = false; # Disable auto quote substitution
        NSAutomaticSpellingCorrectionEnabled = false; # Disable auto spelling correction
        NSNavPanelExpandedStateForSaveMode = true; # Expand save panel by default
        NSNavPanelExpandedStateForSaveMode2 = true;
      };
    };
  };

  # Add ability to used TouchID for sudo authentication
  security.pam.services.sudo_local.touchIdAuth = true;
}
