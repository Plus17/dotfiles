return {
  "tpope/vim-projectionist",
  config = function()
    vim.g.projectionist_heuristics = {
      ["mix.exs"] = {
        ["lib/*.ex"] = {
          alternate = "test/{}_test.exs",
          template = {
            "defmodule {camelcase|capitalize|dot} do",
            "end",
          },
        },
        ["test/*_test.exs"] = {
          alternate = "lib/{}.ex",
        },
      },
    }
  end,
}
