return {
  "vim-test/vim-test",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    vim.g["test#strategy"] = "neovim"
    vim.g["test#neovim#term_position"] = "botright"
    vim.g["test#neovim#term_opener"] = "vsplit"
    vim.g["test#neovim#term_opener_args"] = { "10" }
    vim.g["test#neovim#term_opener_term_args"] = { "15" }
    vim.g["test#neovim#term_opener_term_type"] = "terminal"
    vim.g["test#neovim#term_opener_term_finish"] = "close"
    vim.g["test#neovim#term_opener_term_position"] = "botright"
    vim.g["test#neovim#term_opener_term_direction"] = "vertical"
    vim.g["test#neovim#term_opener_term_size"] = "10"
    vim.g["test#neovim#term_opener_term_exe"] = "vsplit"
    vim.g["test#neovim#term_opener_term_exe_args"] = { "15" }
    vim.g["test#neovim#term_opener_term_exe_type"] = "terminal"
    vim.g["test#neovim#term_opener_term_exe_finish"] = "close"
    vim.g["test#neovim#term_opener_term_exe_position"] = "botright"
    vim.g["test#neovim#term_opener_term_exe_direction"] = "vertical"
    vim.g["test#neovim#term_opener_term_exe_size"] = "10"
    vim.g["test#neovim#term_opener_term_exe_term_args"] = { "15" }
    vim.g["test#neovim#term_opener_term_exe_term_type"] = "terminal"
    vim.g["test#neovim#term_opener_term_exe_term_finish"] = "close"
    vim.g["test#neovim#term_opener_term_exe_term_position"] = "botright"
    vim.g["test#neovim#term_opener_term_exe_term_direction"] = "vertical"
    vim.g["test#neovim#term_opener_term_exe_term_size"] = "10"
    vim.g["test#neovim#term_opener_term"] = "botright"

    vim.keymap.set("n", "<leader>tt", "<cmd>TestFile<cr>")
    vim.keymap.set("n", "<leader>tn", "<cmd>TestNearest<cr>")
    vim.keymap.set("n", "<leader>ts", "<cmd>TestSuite<cr>")
    vim.keymap.set("n", "<leader>tl", "<cmd>TestLast<cr>")
    vim.keymap.set("n", "<leader>tv", "<cmd>TestVisit<cr>")
  end,
}
