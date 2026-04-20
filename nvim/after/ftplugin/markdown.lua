require("render-markdown").setup({
    restart_highlighter = true,

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
  local function set_hl(name, opts)
    vim.api.nvim_set_hl(0, name, vim.tbl_extend("force", opts, { force = true }))
  end

  local function get_hl(name)
    return vim.api.nvim_get_hl(0, { name = name, link = false })
  end

  local orange_fg = "#fe8019"
  local orange_ct = 208

  local teal_fg = "#458588"
  local teal_ct = 66

  local yellow_fg = "#fabd2f"
  local yellow_ct = 214

  local grey_fg = "#928374"
  local grey_ct = 245

  -- Headers. Set everything to orange.
  -- There are a variety of area groups to set here due to multiple, slightly-overlapping plugins
  -- (vim-polygot, render-markdown) affecting different parts of the line (#, symbol, text).
  set_hl("mkdHeading", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("mkdHeadingDelimiter", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("htmlH1", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("htmlH2", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("htmlH3", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("htmlH4", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("htmlH5", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("htmlH6", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("@markup.heading", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("@markup.heading.1.markdown", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("@markup.heading.2.markdown", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("@markup.heading.3.markdown", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("@markup.heading.4.markdown", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("@markup.heading.5.markdown", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("@markup.heading.6.markdown", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("RenderMarkdownH1", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("RenderMarkdownH2", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("RenderMarkdownH3", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("RenderMarkdownH4", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("RenderMarkdownH5", { fg = orange_fg, ctermfg = orange_ct })
  set_hl("RenderMarkdownH6", { fg = orange_fg, ctermfg = orange_ct })

  -- Block quotes. Set to teal.
  set_hl("@markup.quote", { fg = teal_fg, ctermfg = teal_ct })
  set_hl("@markup.quote.markdown", { fg = teal_fg, ctermfg = teal_ct })
  set_hl("RenderMarkdownQuote", { fg = teal_fg, ctermfg = teal_ct })
  set_hl("RenderMarkdownQuote1", { fg = teal_fg, ctermfg = teal_ct })
  set_hl("RenderMarkdownQuote2", { fg = teal_fg, ctermfg = teal_ct })
  set_hl("RenderMarkdownQuote3", { fg = teal_fg, ctermfg = teal_ct })
  set_hl("RenderMarkdownQuote4", { fg = teal_fg, ctermfg = teal_ct })
  set_hl("RenderMarkdownQuote5", { fg = teal_fg, ctermfg = teal_ct })
  set_hl("RenderMarkdownQuote6", { fg = teal_fg, ctermfg = teal_ct })

  -- Bold and italics set to yellow
  set_hl("htmlBold", { fg = yellow_fg, ctermfg = yellow_ct })
  set_hl("htmlItalic", { fg = yellow_fg, ctermfg = yellow_ct })
  set_hl("@markup.strong", { fg = yellow_fg, ctermfg = yellow_ct })
  set_hl("@markup.strong.markdown_inline", { fg = yellow_fg, ctermfg = yellow_ct })
  set_hl("@markup.italic", { fg = yellow_fg, ctermfg = yellow_ct, italic = true, cterm = { italic = true } })
  set_hl("@markup.italic.markdown_inline", { fg = yellow_fg, ctermfg = yellow_ct, italic = true, cterm = { italic = true } })

  -- Link text should follow gruvbox's Link highlight (purple + underline).
  set_hl("@markup.link", { link = "Link" })
  set_hl("@markup.link.label", { link = "Link" })
  set_hl("@markup.link.label.markdown_inline", { link = "Link" })
  set_hl("RenderMarkdownLink", { link = "Link" })
  set_hl("RenderMarkdownLinkTitle", { link = "Link" })

  -- Neovim 0.12's markdown parser highlights fenced blocks as raw text. Keep the
  -- render-markdown background, but avoid setting a foreground so injected syntax can show through.
  local code_hl = get_hl("RenderMarkdownCode")
  set_hl("@markup.raw.block", { bg = code_hl.bg, ctermbg = code_hl.ctermbg })
  set_hl("@markup.raw.block.markdown", { bg = code_hl.bg, ctermbg = code_hl.ctermbg })

  -- Strikethrough comes from terminal/editor text attributes, not from the font.
  -- If the terminal does not render the line, the grey fallback still distinguishes the text.
  set_hl("htmlStrike", { fg = grey_fg, ctermfg = grey_ct, strikethrough = true, cterm = { strikethrough = true } })
  set_hl("TTStrikethrough", { fg = grey_fg, ctermfg = grey_ct, strikethrough = true, cterm = { strikethrough = true } })
  set_hl("@markup.strikethrough", { fg = grey_fg, ctermfg = grey_ct, strikethrough = true, cterm = { strikethrough = true } })
  set_hl("@markup.strikethrough.markdown_inline", { fg = grey_fg, ctermfg = grey_ct, strikethrough = true, cterm = { strikethrough = true } })
end

adjust_colors()
