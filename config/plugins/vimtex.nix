{ pkgs, ... }:
{
  #used for tex integration in nvim

  #additional packages
  extraPackages = with pkgs; [
    latexmk # compiler
    texlab # language server
    zathura # pdf viewer
    tectonic # modern tex engine
  ];

  #plugin
  plugins.vimtex = {
    enable = true;

    settings = {
      compiler_method = "latexrun";
      toc_config = {
        split_pos = "vert topleft";
        split_width = 40;
      };
      view_method = "zathura";
    };

    extraConfigLua = ''
      vim.g.vimtex_view_method      = "zathura"  -- PDF viewer
      vim.g.vimtex_compiler_method  = "latexmk"  -- Continuous compilation
    '';
  };

  # Tex lsp features (lsp, linting, completion)
  plugins.lsp.servers.texlab.enable = true;
}
