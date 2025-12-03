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
  local orange_fg = "#fe8019"
  local orange_ct = 208

  local teal_fg = "#458588"
  local teal_ct = 66

  local yellow_fg = "#fabd2f"
  local yellow_ct = 214

  -- Headers. Set everything to orange.
  -- There are a variety of area groups to set here due to multiple, slightly-overlapping plugins
  -- (vim-polygot, render-markdown) affecting different parts of the line (#, symbol, text).
  vim.api.nvim_set_hl(0, "mkdHeading", { fg = orange_fg, ctermfg = orange_ct, force = true })
  vim.api.nvim_set_hl(0, "mkdHeadingDelimiter", { fg = orange_fg, ctermfg = orange_ct, force = true })
  vim.api.nvim_set_hl(0, "htmlH1", { fg = orange_fg, ctermfg = orange_ct, force = true })
  vim.api.nvim_set_hl(0, "htmlH2", { fg = orange_fg, ctermfg = orange_ct, force = true })
  vim.api.nvim_set_hl(0, "htmlH3", { fg = orange_fg, ctermfg = orange_ct, force = true })
  vim.api.nvim_set_hl(0, "htmlH4", { fg = orange_fg, ctermfg = orange_ct, force = true })
  vim.api.nvim_set_hl(0, "htmlH5", { fg = orange_fg, ctermfg = orange_ct, force = true })
  vim.api.nvim_set_hl(0, "htmlH6", { fg = orange_fg, ctermfg = orange_ct, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownH1", { fg = orange_fg, ctermfg = orange_ct, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownH2", { fg = orange_fg, ctermfg = orange_ct, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownH3", { fg = orange_fg, ctermfg = orange_ct, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownH4", { fg = orange_fg, ctermfg = orange_ct, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownH5", { fg = orange_fg, ctermfg = orange_ct, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownH6", { fg = orange_fg, ctermfg = orange_ct, force = true })

  -- Block quotes. Set to teal.
  vim.api.nvim_set_hl(0, "RenderMarkdownQuote1", { fg = teal_fg, ctermfg = teal_ct, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownQuote2", { fg = teal_fg, ctermfg = teal_ct, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownQuote3", { fg = teal_fg, ctermfg = teal_ct, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownQuote4", { fg = teal_fg, ctermfg = teal_ct, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownQuote5", { fg = teal_fg, ctermfg = teal_ct, force = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownQuote6", { fg = teal_fg, ctermfg = teal_ct, force = true })

  -- Bold and italics set to yellow
  vim.api.nvim_set_hl(0, "htmlBold", { fg = yellow_fg, ctermfg = yellow_ct, force = true })
  vim.api.nvim_set_hl(0, "htmlItalic", { fg = yellow_fg, ctermfg = yellow_ct, force = true })
  -- TODO: strikethrough
  -- currently double-tilde is getting interpreted as a fenced code block and thus rendering green
  -- below are attempts to change it to one of gruvbox's greys
  -- local grey_fg = "#928374"
  -- local grey_ct = 245
  -- vim.api.nvim_set_hl(0, "htmlStrike", { fg = grey_fg, ctermfg = grey_ct, force = true })
  -- vim.api.nvim_set_hl(0, "TTStrikethrough", { fg = grey_fg, ctermfg = grey_ct, force = true })
  -- vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = grey_fg, ctermfg = grey_ct, force = true })
end

adjust_colors()
