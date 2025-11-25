require("render-markdown").setup({
    -- The configuration docs are really good:
    -- https://github.com/MeanderingProgrammer/render-markdown.nvim?tab=readme-ov-file#setup

    -- Disable left gutter signs across the board
    sign = {
      enabled = false
    },

    -- Disable link icons across the board (they're too small to be useful, only add noise)
    link = {
      enabled = false
    },

    -- Disable background colors for headers, too distracting
    heading = {
      backgrounds = {}
    },

    code = {
      -- Background color only spans width of text (not full window)
      width = "block",

      -- Hide the backticks and language icon+name, but keep the *lines* containing that raw text present
      -- to provide some nice padding around code
      style = "normal",
      border = "thick",

      -- Inline code keeps the same background as normal text
      highlight_inline = "",
    },
})


local function adjust_colors()
  -- Headers. Set everything to orange.
  -- There are a variety of area groups to set here due to multiple, slightly-overlapping plugins
  -- (vim-polygot, render-markdown) affecting different parts of the line (#, symbol, text).
  vim.api.nvim_set_hl(0, "mkdHeading", { fg = "#fe8019", ctermfg = 208, force = true })
  vim.api.nvim_set_hl(0, "mkdHeadingDelimiter", { fg = "#fe8019", ctermfg = 208, force = true })
  vim.api.nvim_set_hl(0, "htmlH1", { fg = '#fe8019', ctermfg = 208, force = true })
  vim.api.nvim_set_hl(0, "htmlH2", { fg = '#fe8019', ctermfg = 208, force = true })
  vim.api.nvim_set_hl(0, "htmlH3", { fg = '#fe8019', ctermfg = 208, force = true })
  vim.api.nvim_set_hl(0, "htmlH4", { fg = '#fe8019', ctermfg = 208, force = true })
  vim.api.nvim_set_hl(0, "htmlH5", { fg = '#fe8019', ctermfg = 208, force = true })
  vim.api.nvim_set_hl(0, "htmlH6", { fg = '#fe8019', ctermfg = 208, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownH1", { fg = '#fe8019', ctermfg = 208, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownH2", { fg = '#fe8019', ctermfg = 208, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownH3", { fg = '#fe8019', ctermfg = 208, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownH4", { fg = '#fe8019', ctermfg = 208, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownH5", { fg = '#fe8019', ctermfg = 208, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownH6", { fg = '#fe8019', ctermfg = 208, force = true })

  -- Block quotes. Set to teal.
  vim.api.nvim_set_hl(0, "RenderMarkdownQuote1", { fg = "#458588", ctermfg = 66, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownQuote2", { fg = "#458588", ctermfg = 66, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownQuote3", { fg = "#458588", ctermfg = 66, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownQuote4", { fg = "#458588", ctermfg = 66, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownQuote5", { fg = "#458588", ctermfg = 66, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownQuote6", { fg = "#458588", ctermfg = 66, force = true })

  -- TODO:
  -- bold
  -- italic
  -- strikethrough?
end

adjust_colors()
