local M = {}

--make link from CallStack to Thoughnvim_buf_get_lines)s
-- Create new header in Thoughts.md an link to it
-- Should be called from the current line in the CallStack

local winFuncs = require("callStack.winFuncs")
local call = vim.api.nvim_call_function
local cmd = vim.api.nvim_command

local tabSize = vim.api.nvim_buf_get_option(0, "tabstop")

local function getTabsAndText()

  local curLine = call("getline", {"."})

  local i, j = string.find(curLine, "- ")

  if i and j then

    local title = string.sub(curLine, j)

    local spaces = string.sub(curLine, 1,i-1)

    local tabs = #spaces/tabSize

    return tabs, title
  end
end

function M.NewHeader()

  local tabs, title = getTabsAndText()

  if tabs and title then

    --Header symbols
    local hSyms = "\\#\\#"

    hSyms = hSyms..string.rep("\\#", tabs)

    cmd("silent! !echo \""..hSyms..title.."\" >> Thoughts.md" )

    M.GoToHeader()
  end
end


function M.GoToHeader()

  local tabs, title = getTabsAndText()

  if tabs and title then
    --Header symbols
    local hSyms = "##"
    hSyms = hSyms..string.rep("#", tabs)

    local header = hSyms.."\\"..title
    winFuncs.openWindow(ThoughtsBuf)
    local match = vim.fn.search(header)

    cmd(""..match)
  end
end
return M
