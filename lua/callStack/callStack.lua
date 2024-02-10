local function openWindow()
  WindowHandle = vim.api.nvim_open_win(BufferHandle, true,
    {relative="win", row=5, col=45, width=100, height=30})
end

local function closeWindow ()
  vim.api.nvim_win_hide(WindowHandle)
end

vim.keymap.set("n", "m", function ()
  openWindow()
end)
vim.keymap.set("n", "<C-m>",function ()
  closeWindow()
end )
