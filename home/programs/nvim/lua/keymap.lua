local keymap = vim.keymap

keymap.set('i', '<C-c>', '<Esc>')

-- remap arrows for colemak
local function arrow_remap(from, to)
	keymap.set({ 'n', 'v', 'o' }, from, to)
end

arrow_remap('n', 'j')
arrow_remap('l', 'k')
arrow_remap('e', 'l')
arrow_remap('E', 'L')
arrow_remap('gn', 'gj')
arrow_remap('gl', 'gk')

arrow_remap('j', 'n')
arrow_remap('J', 'N')
arrow_remap('k', 'e')
arrow_remap('gk', 'ge')
arrow_remap('gj', 'gn')

keymap.set('n', '<C-l>', '<C-y>')
keymap.set('n', '<C-n>', '<C-e>')
keymap.set({ 'n', 'v' }, '<C-h>', '20zh')
keymap.set({ 'n', 'v' }, '<C-e>', '20zl')

-- N and L (J and K on qwerty) to move a line up or down (from ThePrimeagen)
keymap.set('v', 'N', ":m '>+1<CR>gv=gv")
keymap.set('v', 'L', ":m '<-2<CR>gv=gv")

-- copy to system clipboard
keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
keymap.set('n', '<leader>Y', '"+Y')
