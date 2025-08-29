return {
  "ibhagwan/fzf-lua",
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",  -- optional, for file icons
  },
  config = function()
    require("fzf-lua").setup({
      colorscheme = "gruvbox",
      winopts = {
        fullscreen = true,
        preview = {
          layout = "vertical",
          vertical = "up:45%", -- up|down:size
        },
      },
      fzf_opts = {
        ["--keep-right"] = "", -- https://github.com/ibhagwan/fzf-lua/issues/269
        ["--layout"] = "default",
      },
      keymap = {
        fzf = {
          ["ctrl-r"] = "select-all+accept", -- https://github.com/ibhagwan/fzf-lua/issues/324
        },
      },
      files = {
        git_icons = false,
        file_icons = false, -- Enable file icons
        -- Use fd if available (better for Windows)
        cmd = "fd --type f --hidden --color=never",
      },
      grep = {
        rg_opts = [[--hidden --no-ignore --column --line-number --no-heading --color=always -g "*.ts" -g "*.html" -g "*.scss" -g "*.spec.ts" -g "*.py"]],
      },
      lsp = {
        async_or_timeout  = 60000,
      },
    })

    vim.keymap.set("n", "<c-P>", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
    vim.keymap.set("n", "<leader>b", "<cmd>lua require('fzf-lua').buffers()<CR>", { desc = "Fuzzy find recent files" })
    vim.keymap.set("n", "<leader>/", "<cmd>lua require('fzf-lua').live_grep_resume()<CR>", { desc = "Find string in cwd" })
    vim.keymap.set("n", "gr", ":FzfLua lsp_references<CR>")
  end,
}
