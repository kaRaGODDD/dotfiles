require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "go", "cpp", "python" },
  sync_install = false,
  indent = { enable = true },
  auto_install = true,
  highlight = {
    enable = true,
  },
}
