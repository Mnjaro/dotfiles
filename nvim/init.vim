" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'hzchirs/vim-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/HerringtonDarkholme/yats.vim' "Typescript syntax
Plug 'https://github.com/honza/dockerfile.vim' " Docker syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'maxmellon/vim-jsx-pretty'
Plug 'preservim/nerdtree'

call plug#end()

" setting up Prettier Coc
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

" nerdtree shortcut
map <C-u> :NERDTreeToggle<CR>
map <C-f> :CocCommand<CR>

" ctrl + space triggers suggestions
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" enable true colors
if (has("termguicolors"))
  set termguicolors
endif

" theme
" Palenight
 let g:material_style='oceanic'
 let g:airline_theme='material'
 set background=dark
 colorscheme vim-material
" theme 


" ensure syntax highlighting on whole file
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


set relativenumber

set smarttab
set cindent
syntax enable
set tabstop=2
set shiftwidth=2
set guifont=Monospace\ 50
" always uses spaces instead of tab characters
set expandtab
