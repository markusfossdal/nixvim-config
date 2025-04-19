{
  globals.mapleader = " ";
  keymaps = [
    # Map shift-W to go to the far right of the line
    {
      mode = ["n" "v"];
      key = "<S-w>";
      action = "$";
      options = {
        silent = true;
        noremap = true;
        expr = false;
        desc = "Cursor to far right";
      };
    }

    # Map shift-W to go to the far left of the line
    {
      mode = ["n" "v"];
      key = "<S-b>";
      action = "0";
      options = {
        silent = true;
        noremap = true;
        expr = false;
        desc = "Cursor to far left";
      };
    }

    #Open netrw explorer
    {
      mode = "n";
      key = "<leader>pv";
      action = "<cmd>Ex<CR>";
      options = {
        silent = true;
        noremap = true;
        expr = false;
        desc = "Open Netrw Explorer";
      };
    }

    # Clear search
    # {
    #   mode = "n";
    #   key = "<leader>h";
    #   action = ":nohlsearch<CR>";
    #   options = {
    #     silent = true;
    #     noremap = true;
    #     expr = false;
    #     desc = "test";
    #   };
    # }

    # Cursor in the same position while pasting
    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
      options = {
        silent = true;
        noremap = true;
        expr = false;
        desc = "Keep cursor in the same position while pasting";
      };
    }

    # Half page orienting
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options = {
        silent = true;
        noremap = true;
        expr = false;
        desc = "Orient half-page when using Ctrl+d";
      };
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options = {
        silent = true;
        noremap = true;
        expr = false;
        desc = "Orient half-page when using Ctrl+u";
      };
    }

    # Keep search term in the middle of the screen
    {
      mode = "n";
      key = "n";
      action = "nzzzv";
      options = {
        silent = true;
        noremap = true;
        expr = false;
        desc = "Keep search term in the middle of the screen";
      };
    }
    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
      options = {
        silent = true;
        noremap = true;
        expr = false;
        desc = "Keep search term in the middle of the screen";
      };
    }

    # Replace current line with yank buffer, and keep yank buffer
    {
      mode = "x";
      key = "<leader>p";
      action = "\"_dP";
      options = {
        desc = "Replace current line with yank buffer, and keep yank buffer";
      };
    }

    # Use <leader>y to yank into system clipboard
    {
      mode = ["n" "v"];
      key = "<leader>y";
      action = "'\"+y";
      options = {
        desc = "Yank to system clipboard";
      };
    }

    {
      mode = "n";
      key = "<leader>Y";
      action = "'\"+Y";
      options = {
        desc = "Yank to system clipboard";
      };
    }

    # Delete to blackhole register
    {
      mode = ["n" "v"];
      key = "<leader>d";
      action = "'_d";
      options = {
        desc = "Delete to blackhole register";
      };
    }

    #disable q and Q
    {
      mode = "n";
      key = "q";
      action = "<Nop>";
      options = {
        desc = "Disable q and Q";
      };
    }
    {
      mode = "n";
      key = "Q";
      action = "<Nop>";
      options = {
        desc = "Disable q and Q";
      };
    }

    # Remap Ctrl+c to ESC
    {
      mode = ["i" "v"];
      key = "<C-c>";
      action = "<Esc>";
      options = {
        desc = "Remap Ctrl+C to Esc";
      };
    }

    # Pane splitting
    {
      mode = "n";
      key = "<leader>v";
      action = ":vsplit<CR>";
      options = {
        desc = "Split Pane Vertical";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>h";
      action = ":split<CR>";
      options = {
        desc = "Split Pane Horizontal";
        silent = true;
      };
    }

    # Simpler split navigation
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      options = {
        desc = "Simpler pane navigation";
      };
    }

    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
      options = {
        desc = "Simpler pane navigation";
      };
    }

    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
      options = {
        desc = "Simpler pane navigation";
      };
    }

    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      options = {
        desc = "Simpler pane navigation";
      };
    }
  ]; #end keymaps
}
