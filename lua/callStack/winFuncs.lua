local M = {}

function M.openWindow()
  local windowHandle = vim.api.nvim_open_win(CSBuf, true,
    {relative="win", row=5, col=45, width=100, height=30})

  table.insert(Windows, windowHandle)
end

function M.closeWindow ()

  print("closeWindow")
  local current_winID = vim.api.nvim_call_function("win_getid", {})

  for i,winID in ipairs(Windows) do

    if (winID == current_winID) then
      vim.api.nvim_win_hide(winID)
      table.remove(Windows, i)
    end

  end

end

function M.follow ()

  print("follow")

  local current_winID = vim.api.nvim_call_function("win_getid", {})

  for _,winID in ipairs(Windows) do

    if (winID == current_winID) then

      M.closeWindow()

      local windowHandle = vim.api.nvim_open_win(ThoughtsBuf, true,
      {relative="win", row=5, col=45, width=100, height=30})

      table.insert(Windows, windowHandle)
    end
  end
end

return M
