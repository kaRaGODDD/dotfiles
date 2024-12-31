require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "go", "cpp", "python", "latex", "cuda" },
  sync_install = false,
  indent = { enable = true },
  auto_install = true,
  highlight = {
    enable = true,           -- Включить подсветку для всех поддерживаемых языков
    additional_vim_regex_highlighting = false, -- Выключить подсветку через Vim regex (по умолчанию, она используется как дополнительная подсветка)
  },
}

