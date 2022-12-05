vim.g.mapleader = " "

local keymap = vim.keymap

-- Clear things like highlights
keymap.set("n", "\\<leader>", ":nohl<CR>")

-- Deleting with x does not copy to clipboard
keymap.set("n", "x", '"_x')

-- Increment numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>=", "<C-a>")

-- Decrement numbers
keymap.set("n", "<leader>-", "<C-x>")

-- Quicker Write
keymap.set("n", "<leader>w", ":w<CR>")
--
-- Window Splitting
--

-- Split window horizontally
keymap.set("n", "<leader>sh", "<C-w>s")

-- Splti window vertically
keymap.set("n", "<leader>sv", "<C-w>v")

-- Make windows equal size
keymap.set("n", "<leader>se", "<C-w>=")

-- Close current window
keymap.set("n", "<leader>sc", ":close<CR>")

-- Move window to left
keymap.set("n", "<A-h>", ":WinShift left<CR>")

-- Move window to right
keymap.set("n", "<A-l>", ":WinShift right<CR>")

-- Move window down
keymap.set("n", "<A-j>", ":WinShift down<CR>")

-- Move window up
keymap.set("n", "<A-k>", ":WinShift up<CR>")

-- Move Windows
keymap.set("n", "<leader>sw", ":WinShift<CR>")
--
-- Manage Tabs
--

-- Create new tab
keymap.set("n", "<leader>to", ":tabnew<CR>")

-- Close current tab
keymap.set("n", "<leader>tc", ":tabclose<CR>")

-- Move to next tab
keymap.set("n", "<leader>tn", ":tabnext<CR>")

-- Move to previous tab
keymap.set("n", "<leader>tp", ":tabprevious<CR>")

--
-- Nvim-Tree
--
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--
-- Nvim Misc
--

-- Source init.vim
keymap.set("n", "<leader>rs", ":source $MYVIMRC<CR>")

-- telescrope
keymap.set("n", "<C-p>", ":Telescope find_files<CR>")
keymap.set("n", "<leader>ff", ":Telescope find_files hidden=true<CR>")
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
keymap.set("n", "<leader>fc", ":Telescope grep_string<CR>")
