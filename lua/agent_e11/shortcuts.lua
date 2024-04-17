-- For repetitive tasks. 
-- All shortcuts start with <leader>s

-- Golang "if err != nil"
vim.keymap.set("n",
    "<leader>se",
    "oif err != nil {<cr>return<cr>}<esc><up>$"
)

-- Toggle markdown checkbox (on current line)
function ToggleCheckbox()
    local any_check_re = vim.regex("^- \\[.\\]")
    local checked_re = vim.regex("^- \\[x\\]")
    local unchecked_re = vim.regex("^- \\[ \\]")

    local curpos = vim.fn.getcurpos(".")

    local line_idx = curpos[2] - 1

    -- Return early if there isn't a checkbox
    if not any_check_re:match_line(0, line_idx) then
        return
    end

    -- Toggle checkbox
    if checked_re:match_line(0, line_idx) then
        vim.cmd("s/- \\[x\\]/- \\[ \\]")
    elseif unchecked_re:match_line(0, line_idx) then
        vim.cmd("s/- \\[ \\]/- \\[x\\]")
    end

    -- Reset cursor position
    vim.fn.setpos(".", curpos)
end

vim.keymap.set("n",
    "<leader>sc",
    ToggleCheckbox
)

-- Change all tabs (^I, \t) in file to 4 spaces
vim.keymap.set("n",
    "<leader>st",
    ":%s/\t/    /g<cr>"
)

-- Set the current file to be executable
vim.keymap.set("n",
    "<leader>sx",
    function()
        vim.cmd("!chmod +x " .. vim.fn.expand("%"))
        print("Set current file to be executable")
    end
)
