local rootDir = vim.fn.finddir(".git/..", vim.fn.getcwd())
CSBuf = vim.fn.bufadd(rootDir..'/callStack.md')
ThoughtsBuf = vim.fn.bufadd(rootDir..'/Thoughts.md')

Windows = {}

local winFuncs = require("callStack.winFuncs")
--
--Set keymap -----------------------
vim.keymap.set("n", "m", function ()
  winFuncs.openWindow()
end)
vim.keymap.set("n", "<C-m>",function ()
  winFuncs.closeWindow()
end )

vim.keymap.set("n", "<C-j>", function()
  winFuncs.follow()
end)
