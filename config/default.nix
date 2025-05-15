{
  # Import all your configuration modules here
  imports = [
    # keymaps
    ./keymaps.nix

    # settings
    ./settings.nix

    # utilities
    ./plugins/utils/whichkey.nix
    ./plugins/utils/telescope.nix
    ./plugins/utils/vim-tmux-navigator.nix

    # ui
    ./plugins/ui/bufferline.nix
    ./plugins/ui/lualine.nix
    ./plugins/ui/web-devicons.nix

    # editor
    ./plugins/editor/treesitter.nix
    ./plugins/editor/neo_tree.nix

    # cmp
    ./plugins/cmp/cmp.nix
    ./plugins/cmp/cmp-path.nix
    ./plugins/cmp/cmp-nvim-lsp.nix
    ./plugins/cmp/cmp-buffer.nix
    #./plugins/cmp/cmp-cmdline.nix

    # lsp
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/lsp-lines.nix
    ./plugins/lsp/conform-nvim.nix

    # themes
    ./plugins/themes/default.nix

    #snippets
    ./plugins/snippets/luasnip.nix
  ];
}
