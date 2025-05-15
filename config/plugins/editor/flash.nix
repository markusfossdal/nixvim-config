{
  plugins.flash = {
    enable = true;
  };

  extraConfigLua = ''
    local flash = require("flash")

    vim.api.nvim_create_autocmd("CmdlineEnter", {
      pattern = "/",
      callback = function()
        flash.toggle(true)
      end,
    })

    vim.api.nvim_create_autocmd("CmdlineLeave", {
      pattern = "/",
      callback = function()
        flash.toggle(false)
      end,
    })
  '';
}
