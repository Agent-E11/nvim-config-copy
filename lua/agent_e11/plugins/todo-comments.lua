return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local todo_comments = require("todo-comments")
        todo_comments.setup({
            signs = FancyIcons(), -- TODO: Instead of disabling them completely, it should just change to ascii
        })
        vim.keymap.set("n", "<leader>ts", ":TodoTelescope<cr>")
        vim.keymap.set("n", "<leader>tj", todo_comments.jump_next)
        vim.keymap.set("n", "<leader>tk", todo_comments.jump_prev)
    end
}
