return {
    "mbbill/undotree",
    config = function ()
        vim.g.undotree_UndoDir = "~/.undoDir/"
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end
}
