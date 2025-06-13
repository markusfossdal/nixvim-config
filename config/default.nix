{
  # Import all your configuration modules here
  imports = [
    ./keymaps.nix
    ./settings.nix
    ./plugins/whichkey.nix
    ./plugins/telescope.nix
    ./plugins/vim-tmux-navigator.nix
    ./plugins/bufferline.nix
    ./plugins/lualine.nix
    ./plugins/web-devicons.nix
    ./plugins/treesitter.nix
    ./plugins/neo_tree.nix
    ./plugins/noice.nix
    ./plugins/flash.nix
    ./plugins/cmp.nix
    ./plugins/cmp-path.nix
    ./plugins/cmp-nvim-lsp.nix
    ./plugins/cmp-buffer.nix
    ./plugins/cmp-cmdline.nix
    ./plugins/cmp-tmux.nix
    ./plugins/lsp.nix
    ./plugins/lsp-lines.nix
    ./plugins/lsp-signature.nix
    ./plugins/conform-nvim.nix
    ./plugins/theme.nix
    ./plugins/luasnip.nix
    ./plugins/tiny-inline-diagnostic.nix
    ./plugins/smear-cursor.nix

    # ./plugins/vimtex.nix
    # ./plugins/cmp-vimtex.nix
  ];
}
