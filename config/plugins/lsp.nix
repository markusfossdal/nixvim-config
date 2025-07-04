{
  plugins.lsp = {
    enable = true;
    servers = {
      lua_ls.enable = true;

      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };

      clangd = {
        enable = true;
        # settings = {
        #   debounce_text_changes = 200;
        # };
      };
      nixd.enable = true;
      cmake = {
        enable = true;
        extraOptions = {
          single_file_support = true;
        };
      };

    };
  };
}
