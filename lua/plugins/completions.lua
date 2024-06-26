return {
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    {
        'hrsh7th/nvim-cmp',
        config = function()
            local cmp = require'cmp'

            cmp.setup({
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                    ['<Tab>'] = cmp.mapping(function(fallback)
                                                if cmp.visible() then
                                                    cmp.select_next_item()
                                                else
                                                    fallback()
                                                end
                                            end, { "i", "s"}),

                    ['<S-Tab>'] = cmp.mapping(function(fallback)
                                                if cmp.visible() then
                                                    cmp.select_prev_item()
                                                else
                                                    fallback()
                                                end
                                            end, { "i", "s"}),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' }
                })
            })
        end
    }
}
