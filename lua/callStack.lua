local rootDir = vim.fn.finddir(".git/..", vim.fn.getcwd())
CSBuf = vim.fn.bufadd(rootDir..'/callStack.md')
ThoughtsBuf = vim.fn.bufadd(rootDir..'/Thoughts.md')

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
