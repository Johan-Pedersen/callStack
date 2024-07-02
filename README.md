# CallStack

Nvim plugin for keeping track of tasks in a FIFO approach.

The idear is to keep a stack of tasks, where each task / sub-task can have corresponding notes.

"push" and "pop" tasks to the call stack as you get done with them. (Disclaimer: There are no push and pop methods, as it would be too restrictive )

If you need to take some extra notes correlated to a task. Do so by making a corresponding header in **Thoughts.md** with \<th\> and automatically jump to it.

## Keymaps

```lua
--Set keymap -----------------------
vim.keymap.set("n", "]c", function ()
  winFuncs.openWindow(CSBuf) -- Open CallStack window
end)
vim.keymap.set("n", "[c",function ()
  winFuncs.closeWindow() -- Close current window
end)

vim.keymap.set("n", "]t", function()
  winFuncs.openWindow(ThoughtsBuf) --Open Thoughts window
end)

vim.keymap.set("n", "th", function()
  headers.ToHeader() -- Make new header for stack element and jump to it
end)
```


## Images

### call stack

![call stack](./pics/callstack.png)

### Thoughts

![thoughts](./pics/thoughts.png)

