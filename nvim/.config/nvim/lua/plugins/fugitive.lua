return {
  "tpope/vim-fugitive",
  cmd = "Git",
  config = function()
    vim.keymap.set("n", "<leader>gs", ":Git<cr>", { noremap = true, silent = true })
  end,
}
