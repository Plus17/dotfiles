return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      require("ibl").setup()
    end
}
-- return {
--     "echasnovski/mini.indentscope",
--     version = "*",
--     config = function()
--         require("mini.indentscope").setup({
--             indent = {
--                 enable = true,
--                 disable = {},
--             },
--             scope = {
--                 enable = true,
--                 disable = {},
--             },
--         })
--     end
-- }
