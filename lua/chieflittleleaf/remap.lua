-- sets the leader key to a space
vim.g.mapleader = " "

-- allows you to jump back into the netrw view from a file
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- remap for quick saving of files
vim.keymap.set("n", "<leader>w", vim.cmd.write)

-- allows in visual mode to move the highlighted using J or K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Yanks the line/highlighted text without a new line
vim.keymap.set("n", "Y", "yg$")

-- allows for my J command to keep the cursor where it was instead of moving to the end of the line
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in the middle of the file while using Ctrl+d/u to move in the file
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- allows for search terms to stay in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "nzzzv")

-- Perserves copy in buffer for pasting over highlighted objects by deleting the highlighted stuff into the void buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy system buffer
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete system buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>d", "\"_d")

-- i do not use ; often so remapped to be just :
vim.keymap.set("n", ";", ":")

-- remapped for quick esc functionality this feels more normal
vim.keymap.set("i", "<C-k>", "<Esc>")

-- tmux stuff
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

--quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- give a cool little menu to start replace the word you are currently on
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- auto sets file you are working in to be executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
