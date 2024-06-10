local M = {}

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
  local file = io.open(DocsPath.."/".."Thoughts.md","a")

  if file then
    file:write(newHeader)
    file:flush()
    file:close()
  end
end

local function findHeader(header)
  winFuncs.openWindow(ThoughtsBuf)
  local match = vim.fn.search(header)
  return match
end

function M.ToHeader()

  local header = mkHeader()

  local match = findHeader(header)
  print("match", match)
  if match == 0 then
    apndThoughts(header)
    cmd("e")
    --Jump to header
    findHeader(header)
  end
end

return M
