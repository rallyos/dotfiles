require('nvim-treesitter.configs').setup {
    ensure_installed = { "go", "typescript", "javascript", "tsx", "lua", "bash", "json", "yaml", "markdown" },
    sync_install = false,
    prefer_git = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

