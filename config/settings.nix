{
  config = {
    opts = {
      backspace = "2"; # Allow backspace over everything in insert mode
      showcmd = true; # Show partial commands in the last line of the screen
      laststatus = 2; # Always display the status line
      autowrite = true; # Automatically save before commands like :next and :make
      cursorline = true; # Do not highlight the line with the cursor
      autoread = true; # Automatically reload files if changed outside of Vim
      tabstop = 4; # Number of spaces a tab counts for
      shiftwidth = 4; # Number of spaces to use for auto-indent
      softtabstop = 4; # Number of spaces a tab counts for when editing
      shiftround = true; # Round indent to multiple of 'shiftwidth'
      expandtab = true; # Use spaces instead of tabs
      swapfile = false; # Do not use a swap file
      backup = false; # Disable file backups
      undofile = true; # Save undo history to an undo file
      hlsearch = true; # Disable highlighting of search results
      incsearch = true; # Enable incremental search
      scrolloff = 8; # Keep 8 lines above and below the cursor when scrolling
      signcolumn = "yes"; # Always show the sign column
      updatetime = 50; # Faster completion by reducing time for swap file write
      colorcolumn = "80"; # Highlight the 80th column
      relativenumber = true; # Show relative line numbers
      number = true; # Show absolute line number of the current line
      hidden = true; # Allows abandoment of buffer while keeping it in memory?
    };
  };
}
