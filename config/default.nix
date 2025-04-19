{
  # Import all your configuration modules here
  imports = [
    ./plugins/ui/bufferline.nix
    ./plugins/ui/lualine.nix
    ./plugins/ui/web-devicons.nix
    ./plugins/lsp/lsp.nix
    # ./plugins/cmp/cmp.nix
    ./keymaps.nix
    ./settings.nix
    ./plugins/themes/default.nix
    ./plugins/utils/whichkey.nix
    ./plugins/utils/telescope.nix
  ];
}
