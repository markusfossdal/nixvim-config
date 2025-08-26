{ pkgs, ... }:
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
        cmd = [
          "clangd"
          "--header-insertion=never"
        ];
        # package = pkgs.clang-tools;
      };

      nixd.enable = true;

      pyright = {
        enable = true;
      };

      cmake = {
        enable = true;
        extraOptions = {
          single_file_support = true;
        };
      };

    };
  };
}
