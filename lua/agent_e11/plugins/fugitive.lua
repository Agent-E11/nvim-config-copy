return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", function()
            vim.cmd("topleft vert Git")
        end)
        vim.keymap.set("n", "<leader>gc", function()
            vim.cmd("Git commit -v")
        end)
    end
}
