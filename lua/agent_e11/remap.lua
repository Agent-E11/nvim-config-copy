vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Quickfix list
vim.keymap.set("n", "[q", function()
    if not pcall(vim.cmd.cprev) then
        print("No previous quickfix")
    end
end)
vim.keymap.set("n", "]q", function()
    if not pcall(vim.cmd.cnext) then
        print("No next quickfix")
    end
end)
vim.keymap.set("n", "<leader>qo", vim.cmd.copen)
vim.keymap.set("n", "<leader>qc", vim.cmd.cclose)
