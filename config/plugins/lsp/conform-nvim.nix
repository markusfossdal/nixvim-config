# formatting tool
{ pkgs, ... }:
{
  # formatter binaries
  extraPackages = with pkgs; [
    #nix
    nixfmt-rfc-style
    # alejandra

    #c/c++
  ];

  # Ensures lsp-format is disabled and does not interfer with conform-nvim.
  plugins.lsp-format.enable = false;

  # plugin
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        nix = [ "nixfmt" ]; # or "nixfmt"
        # nix = ["alejandra"];
        "_" = [ "trim_whitespace" ];
      };

      format_on_save = ''
        function(_)
        return { timeout_ms = 500 }   -- run on every :w
        end
      '';
    };
  };

  # keymaps
  keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>f";
      action = ":lua require('conform').format()<CR>";
      options = {
        silent = true;
        noremap = true;
        expr = false;
        desc = "Format with Conform";
      };
    }
  ];
}
