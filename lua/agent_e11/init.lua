--- Check if the terminal uses a fancy font (Like nerd fonts)
function FancyIcons()
    return os.getenv("TERM_FANCYICONS") ~= "0"
end

--- Check if the terminal supports more colors
function FancyColors()
    return os.getenv("TERM_FANCYCOLORS") ~= "0"
end

--- Check if the terminal session is an ssh connection
function Ssh()
    return os.getenv("SSH_CLIENT") ~= nil or os.getenv("SSH_TTY") ~= nil or os.getenv("SSH_CONNECTION") ~= nil
end

-- Get the home directory, regardless of OS
function GetHome()
    return os.getenv("HOME") or os.getenv("UserProfile")
end

require("agent_e11.remap")
require("agent_e11.set")
require("agent_e11.lazy")
require("agent_e11.shortcuts")
require("agent_e11.filetypes")
require("agent_e11.commands")
require("agent_e11.autocmds")
