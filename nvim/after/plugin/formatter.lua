local vim = vim
local formatter = require("formatter")

formatter.setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		python = {
			require("formatter.filetypes.python").black,
		},
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		typescript = {
			require("formatter.filetypes.typescript").prettierd,
		},
		go = {
			require("formatter.filetypes.go").gofmt,
		},
	},
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		vim.cmd.FormatWrite()
	end,
})
