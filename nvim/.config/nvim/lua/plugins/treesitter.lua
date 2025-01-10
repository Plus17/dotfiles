return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        -- A list of parser names, or "all" (the four listed parsers should always be installed)
        ensure_installed = {
          "elixir",
          "ruby",
          "erlang",
          "lua",
          "bash",
          "markdown",
          "json",
          "heex",
          "dockerfile",
          "vim"
        },
      })
    end
  }
}
