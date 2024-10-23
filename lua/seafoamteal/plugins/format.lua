return {
    'stevearc/conform.nvim',
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                javascript = { "prettier" },
                astro = { "prettier" }
            },
            format_after_save = {
                -- timeout_ms = 2500,
                lsp_format = "fallback",
            },
        })        
    end
}
