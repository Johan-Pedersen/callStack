local M = {}

function M.openWindow(buf)
  M.closeWindow()
  local windowHandle = vim.api.nvim_open_win(buf, true,
    {relative="win", row=5, col=45, width=100, height=30})

  table.insert(Windows, windowHandle)
end

function M.closeWindow ()
  if (Windows ~= nil ) then
    local current_winID = vim.api.nvim_call_function("win_getid", {})
    for i,winID in ipairs(Windows) do

      if (winID == current_winID) then
        vim.cmd.write()
        vim.api.nvim_win_hide(winID)
        table.remove(Windows, i)
      end
    end

  end

end

return M
