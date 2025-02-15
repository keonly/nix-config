{
  manager = {
    cwd = {
      fg = "#94e2d5";
    };
    hovered = {
      fg = "#161616";
      bg = "#89b4fa";
    };
    preview_hovered = {
      fg = "#161616";
      bg = "#f4f4f4";
    };
    find_keyword = {
      fg = "#f9e2af";
      italic = true;
    };
    find_position = {
      fg = "#f5c2e7";
      bg = "reset";
      italic = true;
    };
    marker_copied = {
      fg = "#a6e3a1";
      bg = "#a6e3a1";
    };
    marker_cut = {
      fg = "#f38ba8";
      bg = "#f38ba8";
    };
    marker_marked = {
      fg = "#94e2d5";
      bg = "#94e2d5";
    };
    marker_selected = {
      fg = "#89b4fa";
      bg = "#89b4fa";
    };
    tab_active = {
      fg = "#161616";
      bg = "#f4f4f4";
    };
    tab_inactive = {
      fg = "#f4f4f4";
      bg = "#393939";
    };
    tab_width = 1;
    count_copied = {
      fg = "#161616";
      bg = "#a6e3a1";
    };
    count_cut = {
      fg = "#161616";
      bg = "#f38ba8";
    };
    count_selected = {
      fg = "#161616";
      bg = "#89b4fa";
    };
    border_symbol = "│";
    border_style = {
      fg = "#8d8d8d";
    };
  };
  mode = {
    normal_main = {
      fg = "#161616";
      bg = "#89b4fa";
      bold = true;
    };
    normal_alt = {
      fg = "#89b4fa";
      bg = "#262626";
    };
    select_main = {
      fg = "#161616";
      bg = "#a6e3a1";
      bold = true;
    };
    select_alt = {
      fg = "#a6e3a1";
      bg = "#262626";
    };
    unset_main = {
      fg = "#161616";
      bg = "#f2cdcd";
      bold = true;
    };
    unset_alt = {
      fg = "#f2cdcd";
      bg = "#262626";
    };
  };
  status = {
    separator_open = "";
    separator_close = "";
    separator_style = {
      fg = "#393939";
      bg = "#393939";
    };
    progress_label = {
      fg = "#ffffff";
      bold = true;
    };
    progress_normal = {
      fg = "#89b4fa";
      bg = "#393939";
    };
    progress_error = {
      fg = "#f38ba8";
      bg = "#393939";
    };
    perm_type = {
      fg = "#89b4fa";
    };
    perm_read = {
      fg = "#f9e2af";
    };
    perm_write = {
      fg = "#f38ba8";
    };
    perm_exec = {
      fg = "#a6e3a1";
    };
    perm_sep = {
      fg = "#8d8d8d";
    };
  };
  input = {
    border = {
      fg = "#89b4fa";
    };
    title = {
    };
    value = {
    };
    selected = {
      reversed = true;
    };
  };
  pick = {
    border = {
      fg = "#89b4fa";
    };
    active = {
      fg = "#f5c2e7";
    };
    inactive = {
    };
  };
  confirm = {
    border = {
      fg = "#89b4fa";
    };
    title = {
      fg = "#89b4fa";
    };
    content = {
    };
    list = {
    };
    btn_yes = {
      reversed = true;
    };
    btn_no = {
    };
  };
  completion = {
    border = {
      fg = "#89b4fa";
    };
  };
  tasks = {
    border = {
      fg = "#89b4fa";
    };
    title = {
    };
    hovered = {
      underline = true;
    };
  };
  which = {
    mask = {
      bg = "#262626";
    };
    cand = {
      fg = "#94e2d5";
    };
    rest = {
      fg = "#a8a8a8";
    };
    desc = {
      fg = "#f5c2e7";
    };
    separator = "  ";
    separator_style = {
      fg = "#525252";
    };
  };
  help = {
    on = {
      fg = "#94e2d5";
    };
    run = {
      fg = "#f5c2e7";
    };
    desc = {
      fg = "#a8a8a8";
    };
    hovered = {
      bg = "#525252";
      bold = true;
    };
    footer = {
      fg = "#393939";
      bg = "#f4f4f4";
    };
  };
  notify = {
    title_info = {
      fg = "#94e2d5";
    };
    title_warn = {
      fg = "#f9e2af";
    };
    title_error = {
      fg = "#f38ba8";
    };
  };
  filetype = {
    rules = [
      {
        mime = "image/*";
        fg = "#94e2d5";
      }
      {
        mime = "{audio,video}/*";
        fg = "#f9e2af";
      }
      {
        mime = "application/*zip";
        fg = "#f5c2e7";
      }
      {
        mime = "application/x-{tar,bzip*,7z-compressed,xz,rar}";
        fg = "#f5c2e7";
      }
      {
        mime = "application/{pdf,doc,rtf}";
        fg = "#a6e3a1";
      }
      {
        name = "*";
        fg = "#f4f4f4";
      }
      {
        name = "*/";
        fg = "#89b4fa";
      }
    ];
  };
  icon = {
    files = [
      {
        name = "kritadisplayrc";
        text = "";
        fg = "#cba6f7";
      }
      {
        name = ".gtkrc-2.0";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "bspwmrc";
        text = "";
        fg = "#262626";
      }
      {
        name = "webpack";
        text = "󰜫";
        fg = "#74c7ec";
      }
      {
        name = "tsconfig.json";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = ".vimrc";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "gemfile$";
        text = "";
        fg = "#262626";
      }
      {
        name = "xmobarrc";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "avif";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "fp-info-cache";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = ".zshrc";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "robots.txt";
        text = "󰚩";
        fg = "#6f6f6f";
      }
      {
        name = "dockerfile";
        text = "󰡨";
        fg = "#89b4fa";
      }
      {
        name = ".git-blame-ignore-revs";
        text = "";
        fg = "#fab387";
      }
      {
        name = ".nvmrc";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "hyprpaper.conf";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = ".prettierignore";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "rakefile";
        text = "";
        fg = "#262626";
      }
      {
        name = "code_of_conduct";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "cmakelists.txt";
        text = "";
        fg = "#f4f4f4";
      }
      {
        name = ".env";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "copying.lesser";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "readme";
        text = "󰂺";
        fg = "#f5e0dc";
      }
      {
        name = "settings.gradle";
        text = "";
        fg = "#525252";
      }
      {
        name = "gruntfile.coffee";
        text = "";
        fg = "#fab387";
      }
      {
        name = ".eslintignore";
        text = "";
        fg = "#525252";
      }
      {
        name = "kalgebrarc";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "kdenliverc";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = ".prettierrc.cjs";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "cantorrc";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "rmd";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "vagrantfile$";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = ".Xauthority";
        text = "";
        fg = "#fab387";
      }
      {
        name = "prettier.config.ts";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "node_modules";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = ".prettierrc.toml";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "build.zig.zon";
        text = "";
        fg = "#fab387";
      }
      {
        name = ".ds_store";
        text = "";
        fg = "#393939";
      }
      {
        name = "PKGBUILD";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = ".prettierrc";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = ".bash_profile";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = ".npmignore";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = ".mailmap";
        text = "󰊢";
        fg = "#fab387";
      }
      {
        name = ".codespellrc";
        text = "󰓆";
        fg = "#a6e3a1";
      }
      {
        name = "svelte.config.js";
        text = "";
        fg = "#fab387";
      }
      {
        name = "eslint.config.ts";
        text = "";
        fg = "#525252";
      }
      {
        name = "config";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = ".gitlab-ci.yml";
        text = "";
        fg = "#fab387";
      }
      {
        name = ".gitconfig";
        text = "";
        fg = "#fab387";
      }
      {
        name = "_gvimrc";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = ".xinitrc";
        text = "";
        fg = "#fab387";
      }
      {
        name = "checkhealth";
        text = "󰓙";
        fg = "#89b4fa";
      }
      {
        name = "sxhkdrc";
        text = "";
        fg = "#262626";
      }
      {
        name = ".bashrc";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "tailwind.config.mjs";
        text = "󱏿";
        fg = "#74c7ec";
      }
      {
        name = "ext_typoscript_setup.txt";
        text = "";
        fg = "#fab387";
      }
      {
        name = "commitlint.config.ts";
        text = "󰜘";
        fg = "#94e2d5";
      }
      {
        name = "py.typed";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = ".nanorc";
        text = "";
        fg = "#262626";
      }
      {
        name = "commit_editmsg";
        text = "";
        fg = "#fab387";
      }
      {
        name = ".luaurc";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "fp-lib-table";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = ".editorconfig";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "justfile";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "kdeglobals";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "license.md";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = ".clang-format";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "docker-compose.yaml";
        text = "󰡨";
        fg = "#89b4fa";
      }
      {
        name = "copying";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "go.mod";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "lxqt.conf";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "brewfile";
        text = "";
        fg = "#262626";
      }
      {
        name = "gulpfile.coffee";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = ".dockerignore";
        text = "󰡨";
        fg = "#89b4fa";
      }
      {
        name = ".settings.json";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "tailwind.config.js";
        text = "󱏿";
        fg = "#74c7ec";
      }
      {
        name = ".clang-tidy";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = ".gvimrc";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "nuxt.config.cjs";
        text = "󱄆";
        fg = "#a6e3a1";
      }
      {
        name = "xsettingsd.conf";
        text = "";
        fg = "#fab387";
      }
      {
        name = "nuxt.config.js";
        text = "󱄆";
        fg = "#a6e3a1";
      }
      {
        name = "eslint.config.cjs";
        text = "";
        fg = "#525252";
      }
      {
        name = "sym-lib-table";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = ".condarc";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "xmonad.hs";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "tmux.conf";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "xmobarrc.hs";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = ".prettierrc.yaml";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = ".pre-commit-config.yaml";
        text = "󰛢";
        fg = "#fab387";
      }
      {
        name = "i3blocks.conf";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "xorg.conf";
        text = "";
        fg = "#fab387";
      }
      {
        name = ".zshenv";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "vlcrc";
        text = "󰕼";
        fg = "#fab387";
      }
      {
        name = "license";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "unlicense";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "tmux.conf.local";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = ".SRCINFO";
        text = "󰣇";
        fg = "#89b4fa";
      }
      {
        name = "tailwind.config.ts";
        text = "󱏿";
        fg = "#74c7ec";
      }
      {
        name = "security.md";
        text = "󰒃";
        fg = "#e0e0e0";
      }
      {
        name = "security";
        text = "󰒃";
        fg = "#e0e0e0";
      }
      {
        name = ".eslintrc";
        text = "";
        fg = "#525252";
      }
      {
        name = "gradle.properties";
        text = "";
        fg = "#525252";
      }
      {
        name = "code_of_conduct.md";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "PrusaSlicerGcodeViewer.ini";
        text = "";
        fg = "#fab387";
      }
      {
        name = "PrusaSlicer.ini";
        text = "";
        fg = "#fab387";
      }
      {
        name = "procfile";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "mpv.conf";
        text = "";
        fg = "#161616";
      }
      {
        name = ".prettierrc.json5";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "i3status.conf";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "prettier.config.mjs";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = ".pylintrc";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "prettier.config.cjs";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = ".luacheckrc";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "containerfile";
        text = "󰡨";
        fg = "#89b4fa";
      }
      {
        name = "eslint.config.mjs";
        text = "";
        fg = "#525252";
      }
      {
        name = "gruntfile.js";
        text = "";
        fg = "#fab387";
      }
      {
        name = "bun.lockb";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = ".gitattributes";
        text = "";
        fg = "#fab387";
      }
      {
        name = "gruntfile.ts";
        text = "";
        fg = "#fab387";
      }
      {
        name = "pom.xml";
        text = "";
        fg = "#262626";
      }
      {
        name = "favicon.ico";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "package-lock.json";
        text = "";
        fg = "#262626";
      }
      {
        name = "build";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "package.json";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "nuxt.config.ts";
        text = "󱄆";
        fg = "#a6e3a1";
      }
      {
        name = "nuxt.config.mjs";
        text = "󱄆";
        fg = "#a6e3a1";
      }
      {
        name = "mix.lock";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "makefile";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "gulpfile.js";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "lxde-rc.xml";
        text = "";
        fg = "#a8a8a8";
      }
      {
        name = "kritarc";
        text = "";
        fg = "#cba6f7";
      }
      {
        name = "gtkrc";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "ionic.config.json";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = ".prettierrc.mjs";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = ".prettierrc.yml";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = ".npmrc";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "weston.ini";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "gulpfile.babel.js";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "i18n.config.ts";
        text = "󰗊";
        fg = "#8d8d8d";
      }
      {
        name = "commitlint.config.js";
        text = "󰜘";
        fg = "#94e2d5";
      }
      {
        name = ".gitmodules";
        text = "";
        fg = "#fab387";
      }
      {
        name = "gradle-wrapper.properties";
        text = "";
        fg = "#525252";
      }
      {
        name = "hypridle.conf";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "vercel.json";
        text = "▲";
        fg = "#f5e0dc";
      }
      {
        name = "hyprlock.conf";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "go.sum";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "kdenlive-layoutsrc";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "gruntfile.babel.js";
        text = "";
        fg = "#fab387";
      }
      {
        name = "compose.yml";
        text = "󰡨";
        fg = "#89b4fa";
      }
      {
        name = "i18n.config.js";
        text = "󰗊";
        fg = "#8d8d8d";
      }
      {
        name = "readme.md";
        text = "󰂺";
        fg = "#f5e0dc";
      }
      {
        name = "gradlew";
        text = "";
        fg = "#525252";
      }
      {
        name = "go.work";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "gulpfile.ts";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "gnumakefile";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "FreeCAD.conf";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "compose.yaml";
        text = "󰡨";
        fg = "#89b4fa";
      }
      {
        name = "eslint.config.js";
        text = "";
        fg = "#525252";
      }
      {
        name = "hyprland.conf";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "docker-compose.yml";
        text = "󰡨";
        fg = "#89b4fa";
      }
      {
        name = "groovy";
        text = "";
        fg = "#525252";
      }
      {
        name = "QtProject.conf";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "platformio.ini";
        text = "";
        fg = "#fab387";
      }
      {
        name = "build.gradle";
        text = "";
        fg = "#525252";
      }
      {
        name = ".nuxtrc";
        text = "󱄆";
        fg = "#a6e3a1";
      }
      {
        name = "_vimrc";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = ".zprofile";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = ".xsession";
        text = "";
        fg = "#fab387";
      }
      {
        name = "prettier.config.js";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = ".babelrc";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "workspace";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = ".prettierrc.json";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = ".prettierrc.js";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = ".Xresources";
        text = "";
        fg = "#fab387";
      }
      {
        name = ".gitignore";
        text = "";
        fg = "#fab387";
      }
      {
        name = ".justfile";
        text = "";
        fg = "#8d8d8d";
      }
    ];
    exts = [
      {
        name = "otf";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "import";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "krz";
        text = "";
        fg = "#cba6f7";
      }
      {
        name = "adb";
        text = "";
        fg = "#94e2d5";
      }
      {
        name = "ttf";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "webpack";
        text = "󰜫";
        fg = "#74c7ec";
      }
      {
        name = "dart";
        text = "";
        fg = "#525252";
      }
      {
        name = "vsh";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "doc";
        text = "󰈬";
        fg = "#525252";
      }
      {
        name = "zsh";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "ex";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "hx";
        text = "";
        fg = "#fab387";
      }
      {
        name = "fodt";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "mojo";
        text = "";
        fg = "#fab387";
      }
      {
        name = "templ";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "nix";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "cshtml";
        text = "󱦗";
        fg = "#525252";
      }
      {
        name = "fish";
        text = "";
        fg = "#525252";
      }
      {
        name = "ply";
        text = "󰆧";
        fg = "#8d8d8d";
      }
      {
        name = "sldprt";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "gemspec";
        text = "";
        fg = "#262626";
      }
      {
        name = "mjs";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "csh";
        text = "";
        fg = "#525252";
      }
      {
        name = "cmake";
        text = "";
        fg = "#f4f4f4";
      }
      {
        name = "fodp";
        text = "";
        fg = "#fab387";
      }
      {
        name = "vi";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "msf";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "blp";
        text = "󰺾";
        fg = "#89b4fa";
      }
      {
        name = "less";
        text = "";
        fg = "#393939";
      }
      {
        name = "sh";
        text = "";
        fg = "#525252";
      }
      {
        name = "odg";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "mint";
        text = "󰌪";
        fg = "#a6e3a1";
      }
      {
        name = "dll";
        text = "";
        fg = "#000000";
      }
      {
        name = "odf";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "sqlite3";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "Dockerfile";
        text = "󰡨";
        fg = "#89b4fa";
      }
      {
        name = "ksh";
        text = "";
        fg = "#525252";
      }
      {
        name = "rmd";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "wv";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "xml";
        text = "󰗀";
        fg = "#fab387";
      }
      {
        name = "markdown";
        text = "";
        fg = "#f4f4f4";
      }
      {
        name = "qml";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "3gp";
        text = "";
        fg = "#fab387";
      }
      {
        name = "pxi";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "flac";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "gpr";
        text = "";
        fg = "#cba6f7";
      }
      {
        name = "huff";
        text = "󰡘";
        fg = "#525252";
      }
      {
        name = "json";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "gv";
        text = "󱁉";
        fg = "#525252";
      }
      {
        name = "bmp";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "lock";
        text = "";
        fg = "#e0e0e0";
      }
      {
        name = "sha384";
        text = "󰕥";
        fg = "#8d8d8d";
      }
      {
        name = "cobol";
        text = "⚙";
        fg = "#525252";
      }
      {
        name = "cob";
        text = "⚙";
        fg = "#525252";
      }
      {
        name = "java";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "cjs";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "qm";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "ebuild";
        text = "";
        fg = "#393939";
      }
      {
        name = "mustache";
        text = "";
        fg = "#fab387";
      }
      {
        name = "terminal";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "ejs";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "brep";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "rar";
        text = "";
        fg = "#fab387";
      }
      {
        name = "gradle";
        text = "";
        fg = "#525252";
      }
      {
        name = "gnumakefile";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "applescript";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "elm";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "ebook";
        text = "";
        fg = "#fab387";
      }
      {
        name = "kra";
        text = "";
        fg = "#cba6f7";
      }
      {
        name = "tf";
        text = "";
        fg = "#525252";
      }
      {
        name = "xls";
        text = "󰈛";
        fg = "#525252";
      }
      {
        name = "fnl";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "kdbx";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "kicad_pcb";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "cfg";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "ape";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "org";
        text = "";
        fg = "#94e2d5";
      }
      {
        name = "yml";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "swift";
        text = "";
        fg = "#fab387";
      }
      {
        name = "eln";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "sol";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "awk";
        text = "";
        fg = "#525252";
      }
      {
        name = "7z";
        text = "";
        fg = "#fab387";
      }
      {
        name = "apl";
        text = "⍝";
        fg = "#fab387";
      }
      {
        name = "epp";
        text = "";
        fg = "#fab387";
      }
      {
        name = "app";
        text = "";
        fg = "#393939";
      }
      {
        name = "dot";
        text = "󱁉";
        fg = "#525252";
      }
      {
        name = "kpp";
        text = "";
        fg = "#cba6f7";
      }
      {
        name = "eot";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "hpp";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "spec.tsx";
        text = "";
        fg = "#525252";
      }
      {
        name = "hurl";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "cxxm";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "c";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "fcmacro";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "sass";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "yaml";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "xz";
        text = "";
        fg = "#fab387";
      }
      {
        name = "material";
        text = "󰔉";
        fg = "#f38ba8";
      }
      {
        name = "json5";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "signature";
        text = "λ";
        fg = "#fab387";
      }
      {
        name = "3mf";
        text = "󰆧";
        fg = "#8d8d8d";
      }
      {
        name = "jpg";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "xpi";
        text = "";
        fg = "#fab387";
      }
      {
        name = "fcmat";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "pot";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "bin";
        text = "";
        fg = "#393939";
      }
      {
        name = "xlsx";
        text = "󰈛";
        fg = "#525252";
      }
      {
        name = "aac";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "kicad_sym";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "xcstrings";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "lff";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "xcf";
        text = "";
        fg = "#525252";
      }
      {
        name = "azcli";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "license";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "jsonc";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "xaml";
        text = "󰙳";
        fg = "#525252";
      }
      {
        name = "md5";
        text = "󰕥";
        fg = "#8d8d8d";
      }
      {
        name = "xm";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "sln";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "jl";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "ml";
        text = "";
        fg = "#fab387";
      }
      {
        name = "http";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "x";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "wvc";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "wrz";
        text = "󰆧";
        fg = "#8d8d8d";
      }
      {
        name = "csproj";
        text = "󰪮";
        fg = "#525252";
      }
      {
        name = "wrl";
        text = "󰆧";
        fg = "#8d8d8d";
      }
      {
        name = "wma";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "woff2";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "woff";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "tscn";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "webmanifest";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "webm";
        text = "";
        fg = "#fab387";
      }
      {
        name = "fcbak";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "log";
        text = "󰌱";
        fg = "#f4f4f4";
      }
      {
        name = "wav";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "wasm";
        text = "";
        fg = "#525252";
      }
      {
        name = "styl";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "gif";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "resi";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "aiff";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "sha256";
        text = "󰕥";
        fg = "#8d8d8d";
      }
      {
        name = "igs";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "vsix";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "vim";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "diff";
        text = "";
        fg = "#393939";
      }
      {
        name = "drl";
        text = "";
        fg = "#eba0ac";
      }
      {
        name = "erl";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "vhdl";
        text = "󰍛";
        fg = "#a6e3a1";
      }
      {
        name = "🔥";
        text = "";
        fg = "#fab387";
      }
      {
        name = "hrl";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "fsi";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "mm";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "bz";
        text = "";
        fg = "#fab387";
      }
      {
        name = "vh";
        text = "󰍛";
        fg = "#a6e3a1";
      }
      {
        name = "kdb";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "gz";
        text = "";
        fg = "#fab387";
      }
      {
        name = "cpp";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "ui";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "txt";
        text = "󰈙";
        fg = "#a6e3a1";
      }
      {
        name = "spec.ts";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "ccm";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "typoscript";
        text = "";
        fg = "#fab387";
      }
      {
        name = "typ";
        text = "";
        fg = "#89dceb";
      }
      {
        name = "txz";
        text = "";
        fg = "#fab387";
      }
      {
        name = "test.ts";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "tsx";
        text = "";
        fg = "#525252";
      }
      {
        name = "mk";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "webp";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "opus";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "bicep";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "ts";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "tres";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "torrent";
        text = "";
        fg = "#94e2d5";
      }
      {
        name = "cxx";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "iso";
        text = "";
        fg = "#f2cdcd";
      }
      {
        name = "ixx";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "hxx";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "gql";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "tmux";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "ini";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "m3u8";
        text = "󰲹";
        fg = "#f38ba8";
      }
      {
        name = "image";
        text = "";
        fg = "#f2cdcd";
      }
      {
        name = "tfvars";
        text = "";
        fg = "#525252";
      }
      {
        name = "tex";
        text = "";
        fg = "#393939";
      }
      {
        name = "cbl";
        text = "⚙";
        fg = "#525252";
      }
      {
        name = "flc";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "elc";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "test.tsx";
        text = "";
        fg = "#525252";
      }
      {
        name = "twig";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "sql";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "test.jsx";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "htm";
        text = "";
        fg = "#fab387";
      }
      {
        name = "gcode";
        text = "󰐫";
        fg = "#6f6f6f";
      }
      {
        name = "test.js";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "ino";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "tcl";
        text = "󰛓";
        fg = "#525252";
      }
      {
        name = "cljs";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "tsconfig";
        text = "";
        fg = "#fab387";
      }
      {
        name = "img";
        text = "";
        fg = "#f2cdcd";
      }
      {
        name = "t";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "fcstd1";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "out";
        text = "";
        fg = "#393939";
      }
      {
        name = "jsx";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "bash";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "edn";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "rss";
        text = "";
        fg = "#fab387";
      }
      {
        name = "flf";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "cache";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "sbt";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "cppm";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "svelte";
        text = "";
        fg = "#fab387";
      }
      {
        name = "mo";
        text = "∞";
        fg = "#8d8d8d";
      }
      {
        name = "sv";
        text = "󰍛";
        fg = "#a6e3a1";
      }
      {
        name = "ko";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "suo";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "sldasm";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "icalendar";
        text = "";
        fg = "#262626";
      }
      {
        name = "go";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "sublime";
        text = "";
        fg = "#fab387";
      }
      {
        name = "stl";
        text = "󰆧";
        fg = "#8d8d8d";
      }
      {
        name = "mobi";
        text = "";
        fg = "#fab387";
      }
      {
        name = "graphql";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "m3u";
        text = "󰲹";
        fg = "#f38ba8";
      }
      {
        name = "cpy";
        text = "⚙";
        fg = "#525252";
      }
      {
        name = "kdenlive";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "pyo";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "po";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "scala";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "exs";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "odp";
        text = "";
        fg = "#fab387";
      }
      {
        name = "dump";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "stp";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "step";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "ste";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "aif";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "strings";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "cp";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "fsscript";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "mli";
        text = "";
        fg = "#fab387";
      }
      {
        name = "bak";
        text = "󰁯";
        fg = "#8d8d8d";
      }
      {
        name = "ssa";
        text = "󰨖";
        fg = "#f9e2af";
      }
      {
        name = "toml";
        text = "";
        fg = "#525252";
      }
      {
        name = "makefile";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "php";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "zst";
        text = "";
        fg = "#fab387";
      }
      {
        name = "spec.jsx";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "kbx";
        text = "󰯄";
        fg = "#6f6f6f";
      }
      {
        name = "fbx";
        text = "󰆧";
        fg = "#8d8d8d";
      }
      {
        name = "blend";
        text = "󰂫";
        fg = "#fab387";
      }
      {
        name = "ifc";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "spec.js";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "so";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "desktop";
        text = "";
        fg = "#393939";
      }
      {
        name = "sml";
        text = "λ";
        fg = "#fab387";
      }
      {
        name = "slvs";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "pp";
        text = "";
        fg = "#fab387";
      }
      {
        name = "ps1";
        text = "󰨊";
        fg = "#6f6f6f";
      }
      {
        name = "dropbox";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "kicad_mod";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "bat";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "slim";
        text = "";
        fg = "#fab387";
      }
      {
        name = "skp";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "css";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "xul";
        text = "";
        fg = "#fab387";
      }
      {
        name = "ige";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "glb";
        text = "";
        fg = "#fab387";
      }
      {
        name = "ppt";
        text = "󰈧";
        fg = "#f38ba8";
      }
      {
        name = "sha512";
        text = "󰕥";
        fg = "#8d8d8d";
      }
      {
        name = "ics";
        text = "";
        fg = "#262626";
      }
      {
        name = "mdx";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "sha1";
        text = "󰕥";
        fg = "#8d8d8d";
      }
      {
        name = "f3d";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "ass";
        text = "󰨖";
        fg = "#f9e2af";
      }
      {
        name = "godot";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "ifb";
        text = "";
        fg = "#262626";
      }
      {
        name = "cson";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "lib";
        text = "";
        fg = "#000000";
      }
      {
        name = "luac";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "heex";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "scm";
        text = "󰘧";
        fg = "#f5e0dc";
      }
      {
        name = "psd1";
        text = "󰨊";
        fg = "#8d8d8d";
      }
      {
        name = "sc";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "scad";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "kts";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "svh";
        text = "󰍛";
        fg = "#a6e3a1";
      }
      {
        name = "mts";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "nfo";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "pck";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "rproj";
        text = "󰗆";
        fg = "#a6e3a1";
      }
      {
        name = "rlib";
        text = "";
        fg = "#fab387";
      }
      {
        name = "cljd";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "ods";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "res";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "apk";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "haml";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "d.ts";
        text = "";
        fg = "#fab387";
      }
      {
        name = "razor";
        text = "󱦘";
        fg = "#525252";
      }
      {
        name = "rake";
        text = "";
        fg = "#262626";
      }
      {
        name = "patch";
        text = "";
        fg = "#393939";
      }
      {
        name = "cuh";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "d";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "query";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "psb";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "nu";
        text = ">";
        fg = "#a6e3a1";
      }
      {
        name = "mov";
        text = "";
        fg = "#fab387";
      }
      {
        name = "lrc";
        text = "󰨖";
        fg = "#f9e2af";
      }
      {
        name = "pyx";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "pyw";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "cu";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "bazel";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "obj";
        text = "󰆧";
        fg = "#8d8d8d";
      }
      {
        name = "pyi";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "pyd";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "exe";
        text = "";
        fg = "#393939";
      }
      {
        name = "pyc";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "fctb";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "part";
        text = "";
        fg = "#94e2d5";
      }
      {
        name = "blade.php";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "git";
        text = "";
        fg = "#fab387";
      }
      {
        name = "psd";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "qss";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "csv";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "psm1";
        text = "󰨊";
        fg = "#8d8d8d";
      }
      {
        name = "dconf";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "config.ru";
        text = "";
        fg = "#262626";
      }
      {
        name = "prisma";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "conf";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "clj";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "o";
        text = "";
        fg = "#393939";
      }
      {
        name = "mp4";
        text = "";
        fg = "#fab387";
      }
      {
        name = "cc";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "kicad_prl";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "bz3";
        text = "";
        fg = "#fab387";
      }
      {
        name = "asc";
        text = "󰦝";
        fg = "#6f6f6f";
      }
      {
        name = "png";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "android";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "pm";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "h";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "pls";
        text = "󰲹";
        fg = "#f38ba8";
      }
      {
        name = "ipynb";
        text = "";
        fg = "#fab387";
      }
      {
        name = "pl";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "ads";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "sqlite";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "pdf";
        text = "";
        fg = "#525252";
      }
      {
        name = "pcm";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "ico";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "a";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "R";
        text = "󰟔";
        fg = "#6f6f6f";
      }
      {
        name = "ogg";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "pxd";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "kdenlivetitle";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "jxl";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "nswag";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "nim";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "bqn";
        text = "⎉";
        fg = "#6f6f6f";
      }
      {
        name = "cts";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "fcparam";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "rs";
        text = "";
        fg = "#fab387";
      }
      {
        name = "mpp";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "fdmdownload";
        text = "";
        fg = "#94e2d5";
      }
      {
        name = "pptx";
        text = "󰈧";
        fg = "#f38ba8";
      }
      {
        name = "jpeg";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "bib";
        text = "󱉟";
        fg = "#f9e2af";
      }
      {
        name = "vhd";
        text = "󰍛";
        fg = "#a6e3a1";
      }
      {
        name = "m";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "js";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "eex";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "tbc";
        text = "󰛓";
        fg = "#525252";
      }
      {
        name = "astro";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "sha224";
        text = "󰕥";
        fg = "#8d8d8d";
      }
      {
        name = "xcplayground";
        text = "";
        fg = "#fab387";
      }
      {
        name = "el";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "m4v";
        text = "";
        fg = "#fab387";
      }
      {
        name = "m4a";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "cs";
        text = "󰌛";
        fg = "#525252";
      }
      {
        name = "hs";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "tgz";
        text = "";
        fg = "#fab387";
      }
      {
        name = "fs";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "luau";
        text = "";
        fg = "#89b4fa";
      }
      {
        name = "dxf";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "download";
        text = "";
        fg = "#94e2d5";
      }
      {
        name = "cast";
        text = "";
        fg = "#fab387";
      }
      {
        name = "qrc";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "lua";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "lhs";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "md";
        text = "";
        fg = "#f4f4f4";
      }
      {
        name = "leex";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "ai";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "lck";
        text = "";
        fg = "#e0e0e0";
      }
      {
        name = "kt";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "bicepparam";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "hex";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "zig";
        text = "";
        fg = "#fab387";
      }
      {
        name = "bzl";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "cljc";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "kicad_dru";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "fctl";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "f#";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "odt";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "conda";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "vala";
        text = "";
        fg = "#525252";
      }
      {
        name = "erb";
        text = "";
        fg = "#262626";
      }
      {
        name = "mp3";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "bz2";
        text = "";
        fg = "#fab387";
      }
      {
        name = "coffee";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "cr";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "f90";
        text = "󱈚";
        fg = "#525252";
      }
      {
        name = "jwmrc";
        text = "";
        fg = "#6f6f6f";
      }
      {
        name = "c++";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "fcscript";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "fods";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "cue";
        text = "󰲹";
        fg = "#f38ba8";
      }
      {
        name = "srt";
        text = "󰨖";
        fg = "#f9e2af";
      }
      {
        name = "info";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "hh";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "sig";
        text = "λ";
        fg = "#fab387";
      }
      {
        name = "html";
        text = "";
        fg = "#fab387";
      }
      {
        name = "iges";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "kicad_wks";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "hbs";
        text = "";
        fg = "#fab387";
      }
      {
        name = "fcstd";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "gresource";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "sub";
        text = "󰨖";
        fg = "#f9e2af";
      }
      {
        name = "ical";
        text = "";
        fg = "#262626";
      }
      {
        name = "crdownload";
        text = "";
        fg = "#94e2d5";
      }
      {
        name = "pub";
        text = "󰷖";
        fg = "#f9e2af";
      }
      {
        name = "vue";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "gd";
        text = "";
        fg = "#8d8d8d";
      }
      {
        name = "fsx";
        text = "";
        fg = "#74c7ec";
      }
      {
        name = "mkv";
        text = "";
        fg = "#fab387";
      }
      {
        name = "py";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "kicad_sch";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "epub";
        text = "";
        fg = "#fab387";
      }
      {
        name = "env";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "magnet";
        text = "";
        fg = "#393939";
      }
      {
        name = "elf";
        text = "";
        fg = "#393939";
      }
      {
        name = "fodg";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "svg";
        text = "󰜡";
        fg = "#fab387";
      }
      {
        name = "dwg";
        text = "󰻫";
        fg = "#a6e3a1";
      }
      {
        name = "docx";
        text = "󰈬";
        fg = "#525252";
      }
      {
        name = "pro";
        text = "";
        fg = "#f9e2af";
      }
      {
        name = "db";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "rb";
        text = "";
        fg = "#262626";
      }
      {
        name = "r";
        text = "󰟔";
        fg = "#6f6f6f";
      }
      {
        name = "scss";
        text = "";
        fg = "#f38ba8";
      }
      {
        name = "cow";
        text = "󰆚";
        fg = "#fab387";
      }
      {
        name = "gleam";
        text = "";
        fg = "#f5c2e7";
      }
      {
        name = "v";
        text = "󰍛";
        fg = "#a6e3a1";
      }
      {
        name = "kicad_pro";
        text = "";
        fg = "#f5e0dc";
      }
      {
        name = "liquid";
        text = "";
        fg = "#a6e3a1";
      }
      {
        name = "zip";
        text = "";
        fg = "#fab387";
      }
    ];
  };
}
