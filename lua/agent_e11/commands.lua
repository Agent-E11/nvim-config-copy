-- Run my documentation program.
-- WIP
vim.api.nvim_create_user_command(
    "OpenDocs",
    function(opts)
        if vim.bo.filetype == "netrw" then
            print("Do not run in netrw")
            return
        end
        vim.fn.termopen({
            "zsh",
            "--onecmd",
            "--no-rcs"
        })
        local keys = vim.api.nvim_replace_termcodes("idoc.zsh<cr>", true, false, true)
        vim.api.nvim_feedkeys(keys, "t", false)
    end,
    {}
)
