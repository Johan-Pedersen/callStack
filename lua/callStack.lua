local rootDir = vim.fn.finddir(".git/..", vim.fn.getcwd())
CSBuf = vim.fn.bufadd(rootDir..'/callStack.md')
ThoughtsBuf = vim.fn.bufadd(rootDir..'/Thoughts.md')

Windows = {}
local winFuncs = require("callStack.winFuncs")
local linking = require("callStack.linking")

linking.NewHeader();
--
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

vim.keymap.set("n", "]h", function()
  linking.NewHeader()
end)

vim.keymap.set("n", "]H", function()
  linking.GoToHeader()
end)
