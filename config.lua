-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


-- 修改主题
lvim.colorscheme = "desert"

-- 添加一些插件
lvim.plugins = {
  -- 显示CPU、内存的插件（例如 btop.vim）
  { "voldikss/vim-floaterm" },
}

-- 忽略大小写搜索
-- 忽略大小写搜索
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 让 telescope 也遵守 smart-case
local telescope = require("telescope")

telescope.setup {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
  },
}
