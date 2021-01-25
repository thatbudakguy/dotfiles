" Ensure vim-plug is installed.
let vimplug_path=expand("~/.local/share/nvim/site/autoload/plug.vim")
if !filereadable(vimplug_path)
	echo "Installing vim-plug..."
	silent exec "!curl -fLo " . shellescape(vimplug_path) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
endif

" Auto-install missing plugins on startup.
autocmd VimEnter *
	\ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	\|	PlugInstall --sync | q
	\| endif

" Plugins to install.
call plug#begin(stdpath("data") . "/plugged")
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" Treesitter configuration.
lua << EOF
require "nvim-treesitter.configs".setup {
	highlight = {
		enable = true
	},
	indent = {
		enable = true
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
}
EOF
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
