return {
    'nvim-treesitter/nvim-treesitter',
    build  = ":TSUpdate",
    config = function()
        local install = require('nvim-treesitter.install')
        install.prefer_git = false
        install.compilers = { "clang" }

        local config = require('nvim-treesitter.configs')
        config.setup({
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "markdown",
                "markdown_inline",
                "go",
                "gomod",
                "gosum",
                "gotmpl",
                "gowork",
                "make",
                "http",
                "html",
                "javascript",
                "json",
                "json5",
                -- "JSON with comments",
                "lua",
                "luadoc",
                -- "lua patterns",
                "sql",
                "toml",
                "typescript"
            },
            auto_install     = true,
            highlight        = {
                enable = true,
            },
            indent           = {
                enable = true,
            },
        })
    end
}
