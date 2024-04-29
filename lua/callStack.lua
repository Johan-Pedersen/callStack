local rootDir = vim.fn.finddir(".git/..", vim.fn.getcwd())
CSBuf = vim.fn.bufadd(rootDir..'/callStack.md')
ThoughtsBuf = vim.fn.bufadd(rootDir..'/Thoughts.md')

vim.fn.bufload(CSBuf)
CSBufLines = vim.api.nvim_buf_get_lines(CSBuf, 0, -1, false)

if CSBufLines[1] == "" then
  vim.fn.appendbufline(rootDir..'/callStack.md', 0, "# Callstack")
end

vim.fn.bufload(ThoughtsBuf)
ThoughtsBufLines = vim.api.nvim_buf_get_lines(ThoughtsBuf, 0, -1, false)

if ThoughtsBufLines[1] == "" then
  vim.fn.appendbufline(rootDir..'/Thoughts.md', 0, "# Thoughts")
end

Windows = {}
local winFuncs = require("callStack.winFuncs")
local headers = require("callStack.headers")

--Set keymap -----------------------
vim.keymap.set("n", "]c", function ()
  winFuncs.openWindow(CSBuf)
end)
vim.keymap.set("n", "[c",function ()
  winFuncs.closeWindow()
end)

vim.keymap.set("n", "]t", function()
  winFuncs.openWindow(ThoughtsBuf)
end)

vim.keymap.set("n", "nh", function()
  headers.NewHeader()
end)

vim.keymap.set("n", "]h", function()
  headers.GoToHeader()
end)
