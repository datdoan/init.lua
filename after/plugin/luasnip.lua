local ls = require("luasnip")

-- -- for "all" filetypes create snippet for "func"
-- ls.add_snippets( "all", {
--   ls.parser.parse_snippet(
--     'func',
--     'function ${1}(${2}) \n{\n\t${3}\n}'),
-- })

-- Map "Ctrl + p" (in insert mode)
-- to expand snippet and jump through fields.
vim.keymap.set(
  'i',
  '<c-p>',
  function()
    if ls.expand_or_jumpable() then
      ls.expand_or_jump()
    end
  end
)
