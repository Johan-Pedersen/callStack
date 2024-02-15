WindowHandle = nil


local rootDir = vim.fn.finddir(".git/..", vim.fn.getcwd())
BufferHandle = vim.fn.bufadd(rootDir..'/callStack.md')

Windows = {}

require("callStack.callStack")
