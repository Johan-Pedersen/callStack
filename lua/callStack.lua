local rootDir = vim.fn.finddir(".git/..", vim.fn.getcwd())

if (rootDir == "") then
  rootDir = "."
end

DocsPath = rootDir.."/docs"

os.execute("mkdir -p "..DocsPath)

CSBuf = vim.fn.bufadd(DocsPath..'/callStack.md')

ThoughtsBuf = vim.fn.bufadd(DocsPath..'/Thoughts.md')

Windows = {}

local function writeBuf(buf)
  vim.api.nvim_buf_call(buf, function()
    vim.cmd(':write')
  end)
end

local winFuncs = require("callStack.winFuncs")
local headers = require("callStack.headers")

--Set keymap -----------------------
--
--Open CallStack
vim.keymap.set("n", "[c", function ()

  vim.fn.bufload(CSBuf)
  CSBufLines = vim.api.nvim_buf_get_lines(CSBuf, 0, -1, false)

  if CSBufLines[1] == "" then
    vim.fn.appendbufline(DocsPath..'/callStack.md', 0, "# Callstack")
  end

  writeBuf(CSBuf)

  winFuncs.openWindow(CSBuf)
end)
--Close Window
vim.keymap.set("n", "]c",function ()
  winFuncs.closeWindow()
end)

-- Open Thoughts
vim.keymap.set("n", "[t", function()
  vim.fn.bufload(ThoughtsBuf)

  ThoughtsBufLines = vim.api.nvim_buf_get_lines(ThoughtsBuf, 0, -1, false)

  if ThoughtsBufLines[1] == "" then
    vim.fn.appendbufline(DocsPath..'/Thoughts.md', 0, "# Thoughts")
  end
  writeBuf(ThoughtsBuf)
  winFuncs.openWindow(ThoughtsBuf)
end)

vim.keymap.set("n", "nh", function()
  headers.NewHeader()
end)

-- Open header/ go to header
vim.keymap.set("n", "[h", function()
  headers.GoToCurHeader()
end)
