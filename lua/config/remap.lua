vim.g.mapleader = " "

-- add ; at the end
vim.api.nvim_set_keymap('n', '<leader>;', 'A;<Esc>', { noremap = true, silent = true })

-- nerd tree
vim.api.nvim_set_keymap('n', '<C-t>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- comment
--vim.keymap.set('n', '<leader>/', '<Plug>(comment_toggle_linewise_current)', { noremap = true, silent = true })
--vim.keymap.set('v', '<leader>/', '<Plug>(comment_toggle_linewise_visual)', { noremap = true, silent = true })
