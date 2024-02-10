WindowHandle = nil

local currentPath = vim.api.nvim_call_function('expand', {"%:p"})
Found = vim.api.nvim_call_function('finddir',{'.git', currentPath})

BufferHandle = vim.fn.bufadd('./' .. Found .. 'callStack.md')



require("callStack.callStack")
