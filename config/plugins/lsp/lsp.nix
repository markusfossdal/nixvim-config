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

      nixd.enable = true;
    };
  };
}
