{...}: {
  programs.nushell = {
    enable = true;

    configFile = {
      text = ''
        $env.config = {
          show_banner: false

          ls: {
            use_ls_colors: true
            clickable_links: true
          }
        }
      '';
    };
  };
}
