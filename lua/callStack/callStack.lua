local function openWindow()

  local currentPath = vim.api.nvim_call_function('expand', {"%:p"})

  local found = vim.api.nvim_call_function('finddir',{'.git', currentPath})

  BufferHandle = vim.fn.bufadd('./' .. found .. 'callStack.md')

  WindowHandle = vim.api.nvim_open_win(BufferHandle, true,
    {relative="win", row=5, col=45, width=100, height=30})
end

local function closeWindow ()
  vim.api.nvim_win_hide(WindowHandle)
end

vim.keymap.set("n", "m", function ()
  openWindow()
end)
vim.keymap.set("n", "mn",function ()
  closeWindow()
end )
