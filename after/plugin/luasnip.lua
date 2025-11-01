
local ls = require("luasnip")

-- Load your own Lua snippets
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })

-- Load community snippets (optional)
require("luasnip.loaders.from_vscode").lazy_load()

-- Keymaps for snippet navigation
vim.keymap.set({"i", "s"}, "<C-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

vim.keymap.set({"i", "s"}, "<C-j>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })
