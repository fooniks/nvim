vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'no'
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.splitright = true
vim.o.termguicolors = true

vim.g.maplocalleader = ' '
vim.g.mapleader = ' '
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set({'n', 'v', 'x'}, '<leader>y', '"+y')
for _, key in ipairs({'y','Y','d','D','p','P'}) do
	vim.keymap.set({'n', 'v', 'x'}, '<leader>'..key, '"+'..key)
end

vim.pack.add({
	'https://github.com/blazkowolf/gruber-darker.nvim',
	'https://github.com/stevearc/oil.nvim',
	'https://github.com/nvim-mini/mini.pick',
	'https://github.com/chomosuke/typst-preview.nvim',
})
vim.cmd('colorscheme gruber-darker')
vim.cmd('hi Normal guibg=NONE')
vim.cmd('hi NormalNC guibg=NONE')

require('oil').setup()
vim.keymap.set('n', '-', ":Oil<CR>")
require('mini.pick').setup()
vim.keymap.set('n', '<leader>e', ":Pick files<CR>")
require('typst-preview').setup{ dependencies_bin = { tinymist = 'tinymist', },
}
