local function openWindow()
  WindowHandle = vim.api.nvim_open_win(BufferHandle, true,
    {relative="win", row=5, col=45, width=100, height=30})

  table.insert(Stack, WindowHandle)
end

local function closeWindow ()

  local current_winID = vim.api.nvim_call_function("win_getid", {})

  for i,winID in ipairs(Stack) do

    if (winID == current_winID) then
      vim.api.nvim_win_hide(winID)
      table.remove(Stack, i)
    end

  end

end

--Set keymap -----------------------
vim.keymap.set("n", "m", function ()
  openWindow()
end)
vim.keymap.set("n", "<C-m>",function ()
  closeWindow()
end )
