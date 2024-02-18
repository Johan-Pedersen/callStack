local rootDir = vim.fn.finddir(".git/..", vim.fn.getcwd())
CSBuf = vim.fn.bufadd(rootDir..'/callStack.md')
ThoughtsBuf = vim.fn.bufadd(rootDir..'/Thoughts.md')

Windows = {}

require("callStack.callStack")
