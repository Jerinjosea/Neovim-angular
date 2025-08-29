return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local colors = {
      default_background = "#504945",
      default_text = "#EBDBB2",
      modified_background = "#AA4542",
      saved_background = "#84A598",
    }
    local theme = {
      normal = {
        a = { bg = colors.saved_background, fg = colors.default_text },
        b = { bg = colors.default_background, fg = colors.default_text },
        c = { fg = colors.default_text, bg = colors.default_background },
        z = { fg = colors.default_text, bg = colors.default_background },
      },
    }

    local function modified_text()
      if vim.bo.modified then
        return "✘"
      end
      return " "
    end

    local hide_in_width = function()
      return vim.fn.winwidth(0) > 100
    end

    local diagnostics = {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      sections = { 'error', 'warn' },
      symbols = { error = '😡 ', warn = '😪 ', info = '😏 ', hint = '💡 ' },
      colored = true,
      update_in_insert = false,
      always_visible = false,
      cond = hide_in_width,
    }

    local diff = {
      'diff',
      colored =  true,
      symbols = { added = '+ ', modified = 'm ', removed = '- ' }, -- changes diff symbols
      cond = hide_in_width,
    }

    require("lualine").setup({
      options = {
        theme = theme,
      },
      sections = {
        lualine_a = {
          {
            modified_text,
            separator = { right = "" },
            padding = {
              left = 3,
              right = 3,
            },
            color = function()
              if vim.bo.modified then
                return { bg = colors.modified_background, fg = colors.default_text }
              end
            end,
          },
        },
        lualine_b = {
          { "filename", file_status = false, path = 4 },
        },
        lualine_c = {},
        lualine_x = {diagnostics, diff, { 'encoding', cond = hide_in_width }, { 'filetype', cond = hide_in_width }},
        lualine_y = {'location'},
        lualine_z = {},
      },
    })
  end,
}
