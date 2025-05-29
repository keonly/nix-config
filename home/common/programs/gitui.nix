{
  lib,
  config,
  ...
}: {
  options = {
    gitui.enable = lib.mkEnableOption "Whether to enable gitui";
  };

  config = lib.mkIf config.gitui.enable {
    programs.gitui = {
      enable = true;

      theme =
        # Ron
        ''
          (
              selected_tab: Some("Reset"),
              command_fg: Some("#f4f4f4"),
              selection_bg: Some("#525252"),
              selection_fg: Some("#f4f4f4"),
              cmdbar_bg: Some("#0b0b0b"),
              cmdbar_extra_lines_bg: Some("#0b0b0b"),
              disabled_fg: Some("#8d8d8d"),
              diff_line_add: Some("#a6e3a1"),
              diff_line_delete: Some("#f38ba8"),
              diff_file_added: Some("#a6e3a1"),
              diff_file_removed: Some("#eba0ac"),
              diff_file_moved: Some("#cba6f7"),
              diff_file_modified: Some("#fab387"),
              commit_hash: Some("#b4befe"),
              commit_time: Some("#e0e0e0"),
              commit_author: Some("#74c7ec"),
              danger_fg: Some("#f38ba8"),
              push_gauge_bg: Some("#89b4fa"),
              push_gauge_fg: Some("#161616"),
              tag_fg: Some("#f5e0dc"),
              branch_fg: Some("#94e2d5")
          )
        '';

      keyConfig =
        # Ron
        ''
          // Note:
          // If the default key layout is lower case,
          // and you want to use `Shift + q` to trigger the exit event,
          // the setting should like this `exit: Some(( code: Char('Q'), modifiers: "SHIFT")),`
          // The Char should be upper case, and the modifier should be set to "SHIFT".
          //
          // Note:
          // find `KeysList` type in src/keys/key_list.rs for all possible keys.
          // every key not overwritten via the config file will use the default specified there
          (
              open_help: Some(( code: F(1), modifiers: "")),

              move_left: Some(( code: Char('h'), modifiers: "")),
              move_right: Some(( code: Char('l'), modifiers: "")),
              move_up: Some(( code: Char('k'), modifiers: "")),
              move_down: Some(( code: Char('j'), modifiers: "")),

              popup_up: Some(( code: Char('p'), modifiers: "CONTROL")),
              popup_down: Some(( code: Char('n'), modifiers: "CONTROL")),
              page_up: Some(( code: Char('b'), modifiers: "CONTROL")),
              page_down: Some(( code: Char('f'), modifiers: "CONTROL")),
              home: Some(( code: Char('g'), modifiers: "")),
              end: Some(( code: Char('G'), modifiers: "SHIFT")),
              shift_up: Some(( code: Char('K'), modifiers: "SHIFT")),
              shift_down: Some(( code: Char('J'), modifiers: "SHIFT")),

              edit_file: Some(( code: Char('I'), modifiers: "SHIFT")),

              status_reset_item: Some(( code: Char('U'), modifiers: "SHIFT")),

              diff_reset_lines: Some(( code: Char('u'), modifiers: "")),
              diff_stage_lines: Some(( code: Char('s'), modifiers: "")),

              stashing_save: Some(( code: Char('w'), modifiers: "")),
              stashing_toggle_index: Some(( code: Char('m'), modifiers: "")),

              stash_open: Some(( code: Char('l'), modifiers: "")),

              abort_merge: Some(( code: Char('M'), modifiers: "SHIFT")),
          )
        '';
    };
  };
}
