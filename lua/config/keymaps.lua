vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>_", ":split<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>|", ":vsplit<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>wq", ":close<CR>", { noremap = true, silent = true })

-- Keep the cursor in the middle while moving half page at a time
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move chuck of lines in visual mode using J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep the search terms in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste and delete the current highlighted word to void register
vim.keymap.set("x", "<leader>p", '"_dP')

-- Leader y to yank into system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Leader d to delete in void register
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { desc = "Open Lazy plugin manager dashboard" })

vim.keymap.set("v", ">", ">gv", { desc = "Indent and stay in visual mode" })
vim.keymap.set("v", "<", "<gv", { desc = "Outdent and stay in visual mode" })

vim.keymap.set("n", "<leader>uw", function() vim.wo.wrap = not vim.wo.wrap end, { desc = "Toggle Line Wrap" })
