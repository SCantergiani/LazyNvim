-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap.set
keymap("n", "<leader>r", function()
  local filetype = vim.bo.filetype
  local file = vim.fn.expand("%:p")
  local cmd
  if filetype == "python" then
    cmd = 'echo "Running file: ' .. file .. '" && python3 ' .. file
  else
    print("Unsupported filetype: " .. filetype)
    return
  end

  Snacks.terminal(cmd, { cwd = LazyVim.root(), auto_close = false, interactive = false })
  print(LazyVim.root())
end, { desc = "Run current file in terminal" })
