{
  plugins.neo-tree = {
    enable = true;
    sources = [
      "filesystem"
      "buffers"
      "git_status"
      "document_symbols"
    ];
    addBlankLineAtTop = false;

    closeIfLastWindow = false;

    filesystem = {
      bindToCwd = false;
      followCurrentFile = {
        enabled = true;
      };
      filteredItems = {
        hideDotfiles = false;
        hideGitignored = true;
        visible = true;
        neverShow = [
          # ".DS_store"
          # ".git"
        ];
      };
    };

    defaultComponentConfigs = {
      indent = {
        withExpanders = true;
        expanderCollapsed = "󰅂";
        expanderExpanded = "󰅀";
        expanderHighlight = "NeoTreeExpander";
      };

      gitStatus = {
        symbols = {
          added = " ";
          conflict = "󰩌 ";
          deleted = "󱂥";
          ignored = " ";
          modified = " ";
          renamed = "󰑕";
          staged = "󰩍";
          unstaged = "";
          untracked = " ";
        };
      };
    };
  };

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Open/Close Neotree";
      };
    }
    {
      mode = [ "n" ];
      key = "<Tab>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Next open buffer";
      };
    }

    {
      mode = [ "n" ];
      key = "<S-Tab>";
      action = "<Cmd>BufferLineCyclePrev<CR>";
      options = {
        desc = "Next open buffer";
      };
    }
  ];
}
