local function openWindow()
  local windowHandle = vim.api.nvim_open_win(CSBuf, true,
    {relative="win", row=5, col=45, width=100, height=30})

  table.insert(Windows, windowHandle)
end

local function closeWindow ()

  print("closeWindow")
  local current_winID = vim.api.nvim_call_function("win_getid", {})

  for i,winID in ipairs(Windows) do

    if (winID == current_winID) then
      vim.api.nvim_win_hide(winID)
      table.remove(Windows, i)
    end

  end

end

local function follow ()

  print("follow")

  local current_winID = vim.api.nvim_call_function("win_getid", {})

  for i,winID in ipairs(Windows) do

    if (winID == current_winID) then

      closeWindow()

      local windowHandle = vim.api.nvim_open_win(ThoughtsBuf, true,
      {relative="win", row=5, col=45, width=100, height=30})

      table.insert(Windows, windowHandle)
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

vim.keymap.set("n", "<C-j>", function()
  follow()
end)
