local rootDir = vim.fn.finddir(".git/..", vim.fn.getcwd())
local fNameCS = "CallStack"
local fNameThoughts = "Thoughts"

if (rootDir == "") then
  rootDir = "."
end

DocsPath = rootDir.."/docs"

os.execute("mkdir -p "..DocsPath)

CSBuf = vim.fn.bufadd(DocsPath..'/'..fNameCS..'.md')

ThoughtsBuf = vim.fn.bufadd(DocsPath..'/'..fNameThoughts..'.md')

Windows = {}

local function writeBuf(buf)
  vim.api.nvim_buf_call(buf, function()
    vim.cmd(':write')
  end)
end


local function writeTitle(buf, name)
  vim.fn.bufload(buf)
  local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)

  if lines[1] == "" then
    print(DocsPath..'/'..name..'.md')
    vim.fn.appendbufline(DocsPath..'/'..name..'.md', 0, "# "..name)
    writeBuf(buf)
  end
end

local winFuncs = require("callStack.winFuncs")
local headers = require("callStack.headers")

--Set keymap -----------------------
--
--Open CallStack
vim.keymap.set("n", "[c", function ()

  writeTitle(CSBuf, fNameCS)
  winFuncs.openWindow(CSBuf)
end)
--Close Window
vim.keymap.set("n", "]c",function ()
  winFuncs.closeWindow()
end)

-- Open Thoughts
vim.keymap.set("n", "[t", function()
  writeTitle(ThoughtsBuf, fNameThoughts)
  winFuncs.openWindow(ThoughtsBuf)
end)

-- 'To header' -> Go to header and create if it doesnt exist
vim.keymap.set("n", "th", function()
  writeTitle(ThoughtsBuf, fNameThoughts)
  headers.ToHeader()
end)
