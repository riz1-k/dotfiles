-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jj", "<ESC>", {
    desc = "Exit insert mode with jj"
})

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", {
    desc = "Clear search highlights"
})

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", {
    desc = "Split window vertically"
}) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", {
    desc = "Split window horizontally"
}) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", {
    desc = "Make splits equal size"
}) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", {
    desc = "Close current split"
}) -- close current split window

-- telescrope buffers
keymap.set("n", "<S-h>", function()
    require("telescope.builtin").buffers({
        sort_mru = true,
        sort_lastused = true,
        initial_mode = "normal"
    })
end, {
    desc = "Open telescope buffers"
})
