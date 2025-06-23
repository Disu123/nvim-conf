require("config")
require("config.lazy")
 -- Indentation settings
vim.opt.expandtab = true         -- Use spaces instead of tabs
vim.opt.shiftwidth = 2           -- Number of spaces for each indentation level
vim.opt.tabstop = 2             -- Number of spaces a tab character represents
vim.opt.softtabstop = 2         -- Number of spaces inserted when hitting <Tab>
vim.opt.smartindent = true      -- Enable smart indentation 
vim.opt.smarttab = true         -- Enable smart tabbing
vim.opt.number = true           -- Enable line numbers
vim.opt.relativenumber = true   -- Enable relative line numbers
--vim.opt.foldmethod = 'syntax'  -- Fold based on syntax groups
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99         -- Show all folds
vim.o.showmode = false         -- no --INSERT--
vim.o.cmdheight = 0
vim.opt.termguicolors = true
vim.opt.cursorline = true  
vim.opt.ignorecase = true
vim.opt.smartcase = true   
vim.opt.scrolloff = 8  

vim.opt.fillchars:append({ eob = " " }) -- Hides ~ by replacing with spaces
vim.opt.signcolumn = "yes" -- disable colum symbol ~
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- terminal
vim.keymap.set('n', '<leader>h', ':belowright split | terminal<CR>', { noremap = true, silent = true })

-- F9 disable highlight afre '/' or '?'
vim.keymap.set('n', '<F9>', ':nohlsearch<CR>', { noremap = true, silent = true })

-- Define highlight group (yellow background)
vim.api.nvim_command("highlight TodoHighlight guifg=Black guibg=Yellow")
-- highligh TODO keyword
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = "*",
  callback = function()
    vim.cmd([[match TodoHighlight /\v<TODO>/]])
  end
})
