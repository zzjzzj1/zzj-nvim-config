vim.keymap.set('n', '<A-m>', ':NvimTreeToggle<CR>', opt)
-- window pick config
vim.keymap.set('n', '<space>w', '<C-w>w', opt)
-- floaterm config
vim.keymap.set('n', '<space>t', ':ToggleTerm direction=float<CR>', opt)
-- telescope config
local telescopeBuiltin = require('telescope.builtin')
vim.keymap.set('n', '<space>ff', telescopeBuiltin.find_files, {})
vim.keymap.set('n', '<space>fg', telescopeBuiltin.live_grep, {})
vim.keymap.set('n', 'gr', telescopeBuiltin.lsp_references, {})
vim.keymap.set('n', 'gi', telescopeBuiltin.lsp_implementations, {})
vim.keymap.set('n', 'gd', telescopeBuiltin.lsp_definitions, {})
-- buffer line pick config
vim.keymap.set('n', '<space>b', ':BufferLinePick<CR>', opt)
vim.keymap.set('n', 'H', ':BufferLineCyclePrev<CR>', opt)
vim.keymap.set('n', 'L', ':BufferLineCycleNext<CR>', opt)
vim.keymap.set('n', '<F5>', ':PythonRun<CR>', opt)
-- trouble config
vim.keymap.set('n', '<space>q', ':TroubleToggle<CR>', opt)
