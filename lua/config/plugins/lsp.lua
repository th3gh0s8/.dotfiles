return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        "saghen/blink.cmp",
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
        "j-hui/fidget.nvim",
        "onsails/lspkind.nvim",
        { "antosha417/nvim-lsp-file-operations", config = true },
        -- Add any other LSP-related plugins you use here
    },
    config = function()
        local lspconfig = require("lspconfig")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")
        local lspkind = require("lspkind")
        local capabilities = require('blink.cmp').get_lsp_capabilities()
        require("fidget").setup({})
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "gopls",
                -- "tsserver",
                "html",
                "cssls",
                "tailwindcss",
                "svelte",
                -- "graphql",
                "emmet_ls",
                -- "prismals",
                "pyright",
            },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end,

                zls = function()
                    lspconfig.zls.setup({
                         capabilities = capabilities,
                        root_dir = lspconfig.util.root_pattern(
                            ".git", "build.zig", "zls.json",
                            "mvnw", "gradlew", "pom.xml", "build.gradle"),
                        settings = {
                            zls = {
                                enable_inlay_hints = true,
                                enable_snippets = true,
                                warn_style = true,
                            },
                        },
                    })
                    vim.g.zig_fmt_parse_errors = 0
                    vim.g.zig_fmt_autosave = 0
                end,
                ["lua_ls"] = function()
                    lspconfig.lua_ls.setup {
                         capabilities = capabilities,
                        settings = {
                            Lua = {
                                runtime = { version = "Lua 5.1" },
                                diagnostics = {
                                    globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
                                }
                            }
                        }
                    }
                end,
                jdtls = function()
                    lspconfig.jdtls.setup({
                         capabilities = capabilities,
                        root_dir = lspconfig.util.root_pattern(".git", "mvnw", "gradlew", "pom.xml", "build.gradle"),
                        settings = {
                            java = {
                                configuration = {
                                    compiler = {
                                        compileOnSave = true,
                                    },
                                },
                            },
                        },
                    })
                end,
            }
        })

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(args)
                local c = vim.lsp.get_client_by_id(args.data.client_id)
                if not c then return end
                vim.api.nvim_create_autocmd('BufWritePre', {
                    buffer = args.buf,
                    callback = function()
                        vim.lsp.buf.format({ bufnr = args.buf, id = c.id })
                    end,
                })
            end,
        })

        -- Blink.cmp setup (uses luasnip for snippets and friendly-snippets for snippet collection)
        require("blink.cmp").setup({
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            keymap = { preset = 'default' },
            appearance = {
                use_nvim_cmp_as_default = false,
                nerd_font_variant = 'mono'
            },
            signature = { enabled = true },
            -- Disable autocompletion popup if you want manual only:
            -- completion = { autocomplete = false },
            -- Add more blink.cmp options here as needed
        })

        vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            underline = true,
            update_in_insert = false,
            severity_sort = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
        mason_tool_installer.setup({
            ensure_installed = {
                "prettier",
                "stylua",
                "isort",
                "black",
            },
        })
    end
}
