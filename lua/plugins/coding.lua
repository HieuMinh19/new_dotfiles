return {
	{
		"tpope/vim-rails",
		config = function()
			vim.g.rails_app_root = vim.fn.getcwd()
		end,
	},
	{
		"slim-template/vim-slim",
		ft = "slim",
		config = function()
			vim.g.slim_indent_tags = "html,body,head,meta,link,script,style,link_to,form_for,form_tag"
		end,
	},
	{
		"github/copilot.vim",
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "main",
		cmd = { "CopilotChat" },
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			debug = true, -- Enable debugging
			-- See Configuration section for rest
		},
	},
}
