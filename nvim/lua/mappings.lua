require "nvchad.mappings"

-- add yours here

local function ignore_globs()
  local globs = {".idea", ".git", "node_modules", ".cache", ".vscode"}

  local outstr = ""

  for _, glob in ipairs(globs) do
    outstr = string.format("%s,--glob=!%s", outstr, glob)
  end

  return outstr
end

local map = vim.keymap.set

map("n", "<leader>ff", "<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files,-u" .. ignore_globs() .. "<CR>", { silent = true, noremap = true })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
