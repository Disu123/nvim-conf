return {
	{
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope-fzf-native.nvim',
     },
     config = function ()
      vim.keymap.set("n", "<space>f", require('telescope.builtin').find_files)
     end
   },
   {
	"nvim-telescope/telescope-ui-select.nvim",
	config = function()
	require("telescope").setup {
		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_dropdown {
					-- even more opts 
				}

			}
		}
}
	require("telescope").load_extension("ui-select")
	end
	},
 }
