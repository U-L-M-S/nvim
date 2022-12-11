local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }), -- HTML/CSS/JS/TypeScript/CSS 
		formatting.black.with({ extra_args = { "--fast" } }), --Python
		formatting.stylua,  -- Lua
		formatting.clang_format, -- C / CPP
    --diagnostics.checkstyle.with({ extra_args = { "-c", "/google_checks.xml" }, }), -- Java
    formatting.google_java_format, --Java. checkstyle isnt working (I PROBABLY don't know how to set it up)
		diagnostics.chktex, -- LaTex
	},
})
