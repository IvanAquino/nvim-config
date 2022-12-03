vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback


nvim_tree.setup {
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    dotfiles = true,
  },
  renderer = {
    group_empty = true,
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  sort_by = "case_sensitive",
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  view = {
    width = 30,
    side = "left",
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
  },
}

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })

