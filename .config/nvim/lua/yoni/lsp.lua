local on_attach = require'completion'.on_attach

--require'lspconfig'.python-language-server.setup{ on_attach=on_attach  }

--require'lspconfig'.cssls.setup{}

require'lspconfig'.tsserver.setup{ on_attach=on_attach }

--require'lspconfig'.clangd.setup {
    --on_attach = on_attach,
    --root_dir = function() return vim.loop.cwd() end
--}
--require'lspconfig'.pyls.setup{ on_attach=on_attach }

--require'lspconfig'.gopls.setup{ on_attach=on_attach }
--require'lspconfig'.rust_analyzer.setup{ on_attach=on_attach }

--require'lspconfig'.sumneko_lua.setup {
    --on_attach = on_attach,
    --cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
    --settings = {
        --Lua = {
            --runtime = {
                ---- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                --version = 'LuaJIT',
                ---- Seup your lua path
                --path = vim.split(package.path, ';'),
            --},
            --diagnostics = {
                ---- Get the language server to recognize the `vim` global
                --globals = {'vim'},
            --},
            --workspace = {
                ---- Make the server aware of Neovim runtime files
                --library = {
                    --[vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    --[vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                --},
            --},
        --},
    --},
--}
