{
  colorschemes.gruvbox.enable = false;

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha"; # latte | frappe | macchiato | mocha | auto
      transparent_background = true; # keep your terminal background
      term_colors = true; # export palette to :terminal
      no_italic = false; # force‑disable italics if your font lacks them
      styles.comments = ["italic"]; # tweak highlight groups

      integrations = {
        cmp = false; # nvim‑cmp completion menu
        gitsigns = false;
        treesitter = false;
        lualine = false; # extra, not enabled by default
      };
    };
  };
}
