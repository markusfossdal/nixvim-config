{ pkgs, ... }:
{
  #used for tex integration in nvim

  #additional packages
  extraPackages = with pkgs; [
    texlivePackages.latexmk # compiler
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
  };

}
