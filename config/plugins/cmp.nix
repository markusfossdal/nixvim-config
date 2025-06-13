{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    autoLoad = true;
    settings = {
      sources = [
        { name = "nvim_lsp"; }
        # { name = "vimtex"; }
        { name = "path"; }
        { name = "buffer"; }
        { name = "cmdline"; }
        { name = "tmux"; }
      ]; # sources
      window = {
        completion = {
          border = "solid";
        };
        documentation = {
          border = "solid";
        };
      }; # window

      performance = {
        max_view_entries = 30;
      };

      mapping = {
        "<C-Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<C-j>" = "cmp.mapping.select_next_item()";
        "<C-k>" = "cmp.mapping.select_prev_item()";
        "<C-e>" = "cmp.mapping.abort()";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-CR>" = "cmp.mapping.confirm({ select = true })";
        "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";

        # "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<CR>" = ''
          cmp.mapping(function(fallback)
            if cmp.visible() and cmp.get_selected_entry() then
              cmp.confirm({ select = false })
            else
              fallback()
            end
          end, { "i", "s" })
        '';
        "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
      };
    }; # mapping
  }; # settings
  extraConfigLua = ''
         local cmp = require'cmp'

     -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
     cmp.setup.cmdline({'/', "?" }, {
       sources = {
         { name = 'buffer' }
       }
     })

    -- Set configuration for specific filetype.
     cmp.setup.filetype('gitcommit', {
       sources = cmp.config.sources({
         { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
       }, {
         { name = 'buffer' },
       })
     })

     -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
     cmp.setup.cmdline(':', {
       sources = cmp.config.sources({
         { name = 'path' }
       }, {
         { name = 'cmdline' }
       }),
     })  '';
}
