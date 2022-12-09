local ok, telescope = pcall(require, "telescope")

if not ok then
  return
end

local tbuiltin_ok, telescope_builtin = pcall(require, "telescope.builtin")

if not tbuiltin_ok then
  return
end

telescope.setup({
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
})

vim.keymap.set('n', '<leader>ff', telescope_builtin.git_files,   { remap = false })
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers,     { remap = false })
vim.keymap.set('n', '<leader>sf', telescope_builtin.find_files,  { remap = false })
vim.keymap.set('n', '<leader>st', telescope_builtin.live_grep,   { remap = false })
vim.keymap.set('n', '<leader>sc', telescope_builtin.colorscheme, { remap = false })

