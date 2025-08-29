return {
  {
    -- Powerful Git integration for Vim
    'tpope/vim-fugitive',
  },
  {
    -- GitHub integration for vim-fugitive
    'tpope/vim-rhubarb',
  },
  {
    -- Hints keybinds
    'folke/which-key.nvim',
  },
  {
    "rmagatti/auto-session",
    config = function()
      local auto_session = require("auto-session")

      auto_session.setup({
        auto_restore_enabled = true,
        auto_session_suppress_dirs = { "~/", "~/AppData/", "~/Downloads", "~/Documents", "~/Desktop/" },
      })

      local keymap = vim.keymap

      keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })           -- restore last workspace session for current directory
      keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
    end,
  },
  {
    "tpope/vim-surround",
    event = "VeryLazy", -- Or on a keymap
  }
}
