local rootDir = vim.fn.finddir(".git/..", vim.fn.getcwd())
CSBuf = vim.fn.bufadd(rootDir..'/callStack.md')
ThoughtsBuf = vim.fn.bufadd(rootDir..'/Thoughts.md')

Windows = {}

local winFuncs = require("callStack.winFuncs")
--
--Set keymap -----------------------
vim.keymap.set("n", "<leader>m", function ()
  winFuncs.openWindow(CSBuf)
end)
vim.keymap.set("n", "m",function ()
  winFuncs.closeWindow()
end)

vim.keymap.set("n", "<leader>j", function()
  winFuncs.openWindow(ThoughtsBuf)
end)
