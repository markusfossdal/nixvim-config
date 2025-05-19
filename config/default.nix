{
  # Import all your configuration modules here
  imports = [
    # keymaps
    ./keymaps.nix

    # settings
    ./settings.nix

    # utilities
    ./plugins/whichkey.nix
    ./plugins/telescope.nix
    ./plugins/vim-tmux-navigator.nix

    # ui
    ./plugins/bufferline.nix
    ./plugins/lualine.nix
    ./plugins/web-devicons.nix

    # editor
    ./plugins/treesitter.nix
    ./plugins/neo_tree.nix
    ./plugins/flash.nix

    # cmp
    ./plugins/cmp.nix
    ./plugins/cmp-path.nix
    ./plugins/cmp-nvim-lsp.nix
    ./plugins/cmp-buffer.nix
    ./plugins/cmp-cmdline.nix
    ./plugins/cmp-tmux.nix

    # lsp
    ./plugins/lsp.nix
    ./plugins/lsp-lines.nix
    ./plugins/conform-nvim.nix

    # themes
    ./plugins/theme.nix

    #snippets
    ./plugins/luasnip.nix
  ];
}
