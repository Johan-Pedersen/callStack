local M = {}

--make link from CallStack to Thoughts
-- Create new header in Thoughts.md an link to it
-- Should be called from the current line in the CallStack

local call = vim.api.nvim_call_function
local cmd = vim.api.nvim_command

local tabSize = vim.api.nvim_buf_get_option(0, "tabstop")

function M.NewHeader()
  local curLine = call("getline", {"."})

  local i, j = string.find(curLine, "- ")

  if i and j then

    local title = string.sub(curLine, j)

    local spaces = string.sub(curLine, 1,i-1)

    local tabNr = #spaces/tabSize

    --Header symbols
    local hSyms = "\\#\\#"

    hSyms = hSyms..string.rep("\\#", tabNr)

    cmd("silent! !echo \""..hSyms..title.."\" >> Thoughts.md" )
  end

  -- print(#"    ")
end

return M
