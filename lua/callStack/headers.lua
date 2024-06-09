local M = {}

--make link from CallStack to Thoughnvim_buf_get_lines)s
-- Create new header in Thoughts.md an link to it
-- Should be called from the current line in the CallStack

local winFuncs = require("callStack.winFuncs")
local call = vim.api.nvim_call_function
local cmd = vim.api.nvim_command

local tabSize = vim.api.nvim_buf_get_option(0, "tabstop")

local function mkHeader()

  local curLine = call("getline", {"."})

  local i, j = string.find(curLine, "- ")

  if i and j then

    local title = string.sub(curLine, j)

    local spaces = string.sub(curLine, 1,i-1)

    local tabNr = #spaces/tabSize

    --Header symbols
    local hSyms = "##"

    hSyms = hSyms..string.rep("#", tabNr)

    local header = hSyms..title

    return header
  else
    error("Current line not starting with -")
  end
end

local function apndThoughts(newHeader)
  file,err = io.open(DocsPath.."/".."Thoughts.md","a")

  if not err then
    file:write(newHeader)
    file:close()
  end
end

function M.NewHeader()

  --Fungere ikke, kan vare det er nodvendigt at escape
  local header = mkHeader()

  apndThoughts(header)
  M.GoToCurHeader()
end

function M.GoToCurHeader()
  local header = mkHeader()
  print("GoToHeader header", header)
  winFuncs.openWindow(ThoughtsBuf)
  local match = vim.fn.search(header)

  cmd(""..match)
end


return M
