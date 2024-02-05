local function openWindow()

  local max_depth = 9


  local back = "" 

  for i=0, max_depth, 1 do
    local dirs = io.popen("dir -d .git", "r")

    if dirs then

      local output = dirs:read("a")

      dirs:close()

      if output == "" then
        back = back .. "../"
      else
        break
      end
    end

  end

  BufferHandle = vim.fn.bufadd('./' .. back .. 'callStack.md')

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
