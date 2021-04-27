source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

call plug#begin('~/.vim/pluged')
"vim in browser
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

Plug 'ThePrimeagen/git-worktree.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'ThePrimeagen/harpoon'
"Plug 'mhinz/vim-rfc'

"Debuging
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'

Plug 'vbe0201/vimdiscord'
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdcommenter'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'gruvbox-community/gruvbox'
Plug 'ayu-theme/ayu-vim'

"fuzy finder"
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

"Plug 'prettier/vim-prettier', {
            \ 'do': 'npm install',
            \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'python'] }
Plug 'mhinz/vim-rfc'
Plug 'mbbill/undotree'

"Plug 'voldikss/vim-floaterm'
call plug#end()

lua require("yoni")

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

let g:yoni_colorscheme = "gruvbox"

let mapleader = " "

let g:firenvim_config = {
            \ 'globalSettings': {
            \ 'alt': 'all',
            \  },
            \ 'localSettings': {
            \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'always',
            \ },
            \ }
            \ }

let fc = g:firenvim_config['localSettings']
let fc['https?://twitter.com'] = {'takeover': 'never', 'priority': 1}
let fc['https?://www.twitch.tv'] = {'takeover': 'never', 'priority': 1}
let fc['https?://www.instagram.com'] = {'takeover': 'never', 'priority': 1}
let fc['https?://www.notion.so'] = {'takeover': 'never', 'priority': 1}
<<<<<<< HEAD
=======
let fc['https?://roamresearch.com'] = {'takeover': 'never', 'priority': 1}
>>>>>>> e2962904fd925c1d24a2833aef983957049b4776


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>vwm :call ColorMyPencils()<CR>

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle


nnoremap <leader>fl :Ex<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :Sex! <CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>


vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

augroup YONI
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END
