local nf_ok, nightfox = pcall(require, "nightfox")

if  nf_ok then
  nightfox.setup({
    options = {
      -- Compiled file's destination location
      compile_path = vim.fn.stdpath("cache") .. "/nightfox",
      compile_file_suffix = "_compiled", -- Compiled file suffix
      transparent = false,    -- Disable setting background
      terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
      dim_inactive = false,   -- Non focused panes set to alternative background
      module_default = true,  -- Default enable value for modules
      styles = {              -- Style to be applied to different syntax groups
        comments = "italic",    -- Value is any valid attr-list value `:help attr-list`
        conditionals = "italic",
        constants = "NONE",
        functions = "NONE",
        keywords = "NONE",
        numbers = "NONE",
        operators = "NONE",
        strings = "NONE",
        types = "NONE",
        variables = "italic",
      },
      inverse = {             -- Inverse highlight for different types
        match_paren = false,
        visual = false,
        search = false,
      },
      modules = {             -- List of various plugins and additional options
        -- ...
      },
    },
    palettes = {},
    specs = {},
    groups = {},
  })
end

local pale_ok, palenightfall = pcall(require, "palenightfall")
if pale_ok then
  palenightfall.setup()
end

--vim.cmd("colorscheme tokyonight-storm")
vim.cmd("colorscheme gruvbox-baby")
