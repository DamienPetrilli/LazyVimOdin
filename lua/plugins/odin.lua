-- File: ~/.config/nvim/lua/plugins/odin.lua

return {
	-- Treesitter configuration (unchanged)
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				vim.list_extend(opts.ensure_installed, { "odin" })
			end
		end,
	},

	-- Updated LSP configuration
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				ols = {
					mason = false,
				},
			},
			setup = {
				ols = function(_, opts)
					require("lspconfig").ols.setup(vim.tbl_deep_extend("force", {
						on_attach = function(client, bufnr)
							print("OLS server capabilities:")
							print(vim.inspect(client.server_capabilities))
						end,
					}, opts))
				end,
			},
		},
	},
}
