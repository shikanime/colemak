{ config, lib, ... }:

with lib;

let
  cfg = config.colemak.helix;
in
{
  options.colemak.helix.enable = mkOption {
    type = types.bool;
    default = config.colemak.enable;
    description = "Enable Colemak keybindings for Helix.";
  };

  config = mkIf cfg.enable {
    programs.helix.settings = {
      keys.normal = {
        # Core Navigation (NEUI Cluster)
        n = "move_char_left";
        e = "move_visual_line_down";
        u = "move_visual_line_up";
        i = "move_char_right";

        # Displaced Commands Restoration
        h = "insert_mode";
        j = "move_next_word_end";
        J = "move_next_long_word_end";
        k = "search_next";
        K = "search_prev";
        l = "undo";
        L = "redo";

        # Utility and Selection
        H = "insert_at_line_start";
        E = "join_selections";
        N = "keep_selections";
        U = "no_op";
        I = "no_op";

        # GoTo Mode Optimization
        g = {
          n = "goto_line_start";
          i = "goto_line_end";
          u = "goto_file_start";
          e = "goto_file_end";
        };

        # View Mode Optimization
        z = {
          u = "scroll_up";
          e = "scroll_down";
        };
      };
      keys.select = {
        # Core Navigation (Extend)
        n = "extend_char_left";
        e = "extend_visual_line_down";
        u = "extend_visual_line_up";
        i = "extend_char_right";

        # Restoration
        h = "insert_mode";
        j = "extend_next_word_end";
        J = "extend_next_long_word_end";
        k = "extend_search_next";
        K = "extend_search_prev";
        l = "undo";
        L = "redo";

        # Utility
        H = "insert_at_line_start";
        E = "join_selections";
        N = "keep_selections";
        U = "no_op";
        I = "no_op";

        # GoTo Mode (Extend)
        g = {
          n = "extend_to_line_start";
          i = "extend_to_line_end";
          u = "goto_file_start";
          e = "goto_file_end";
        };
      };
    };
  };
}
