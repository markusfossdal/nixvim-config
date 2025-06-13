{
  plugins.lsp-signature = {
    enable = true;
    settings = {
      floating_window = true;
      floating_window_above_cur_line = true;
      extra_trigger_chars = [
        "("
        ","
      ];
      hint_prefix = {
        above = "↙ ";
        below = "↖ ";
        current = "← ";
      };
      padding = " ";
      shadow_guibg = "#121315";
      toggle_key = "<C-S-s>";
    };
  };
}
