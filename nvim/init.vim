set clipboard=unnamed
" set clipboard=unnamedplus
set mouse=r
set nocompatible
set cursorline
set number
set relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
syntax on
set backupdir=~/.cache/nvim
" set wildmode=longest,list
set autoindent
set expandtab
set splitright
set splitbelow
set modifiable 
set noswapfile
set wildmenu wildmode=list:longest,full
set autoindent    " 改行時に前の行のインデントを継続する
set smartindent   " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
autocmd FileType vim,help,nerdtree IndentLinesDisable
" autocmd TextChanged,TextChangedI <buffer> silent write

vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P


let g:FZF_DEFAULT_COMMAND='rg --files --hidden -g "!node_modules"'
" let g:$FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git" --glob "!node_modules"'

inoremap <A-1> const funcName=()=>{return(<><div>funcName</div></>)}<CR><CR>export default funcName<CR><Esc>:call ReplaceWordWithFileName()<CR><Esc>:w!<CR>

            
function! ReplaceWordWithFileName()
  let current_file_name = expand('%:t:r')
  execute '%s/funcName/' . current_file_name . '/g'
endfunction

function! ReplaceWordWithArgument(arg)
  let new_word = a:arg
  normal! ciw\<C-r>=new_word\<CR>
endfunction

nnoremap <leader>3 :call ReplaceWordWithArgument(



nnoremap 434 <Esc> :e ~/.config/nvim/init.vim<CR>
nnoremap 343 <Esc> :e ~/.config/nvim/plugged/vim-snippets/snippets/javascript/javascript-react.snippets<CR>

" nnoremap <silent> <C-0> :TmuxNavigatePrevious<cr>
" inoremap <silent> <C-0> <Esc>:TmuxNavigatePrevious<cr>


nnoremap gp a<space><Esc>p

let mapleader = ' '
nnoremap <leader>1 :CocCommand cSpell.addIgnoreWordToUser<cr>
nnoremap <Esc><right> <Esc>$
nnoremap <Esc><left> <Esc>^
nnoremap L Lzz
nnoremap H Hzz
nnoremap G Gzz
nnoremap <leader>l :noh<CR>
nnoremap <leader>q :bdelete!<CR>
nnoremap bd :bdelete!<CR>
nnoremap bl :blast<CR>
nnoremap bf :bfirst<CR>
nnoremap bp :bprevious<CR>
nnoremap gt :bprevious<CR>
nnoremap 2bp :bprevious<CR>:bprevious<CR>
nnoremap 2gt :bprevious<CR>:bprevious<CR>
nnoremap 3bp :bprevious<CR>:bprevious<CR>:bprevious<CR>
nnoremap 3gt :bprevious<CR>:bprevious<CR>:bprevious<CR>
nnoremap <C-left> :bprevious<CR>
inoremap <C-left> <Esc>:bprevious<CR>
nnoremap bn :bnext<CR>
nnoremap gb :bnext<CR>
nnoremap 2gb :bnext<CR>:bnext<CR>
nnoremap 2bn :bnext<CR>:bnext<CR>
nnoremap 3bn :bnext<CR>:bnext<CR>:bnext<CR>
nnoremap 3gb :bnext<CR>:bnext<CR>:bnext<CR>
nnoremap <C-right> :bnext<CR>
inoremap <C-right> <Esc>:bnext<CR>
nnoremap <leader><leader> <C-W>W

nnoremap <A-j> <Esc>:m .+1<CR>
nnoremap <A-k> <Esc>:m .-2<CR>
inoremap <A-j> <Esc>:m .+1<CR>
inoremap <A-k> <Esc>:m .-2<CR>i
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

inoremap zz <Esc>:w<CR>zz
nnoremap zz :noh<CR><Esc>:w<CR>zz
vnoremap zz <Esc>

nnoremap go I<CR><Esc>

nnoremap <C-q> :q!<CR>
inoremap <C-q> <Esc>:q!<CR>
nnoremap <C-s> :w<CR>zz
" nnoremap <C-a> gg99999yy
nnoremap <C-a> ggVG

inoremap <C-s> <Esc>:w<CR><Esc>zz
inoremap <C-p> <Esc>:FZF<CR>

nnoremap <leader>p :Buffers<CR>
nnoremap <C-p> :FZF<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap <silent>o :set paste<CR>o<Esc>:set nopaste<CR>i
nnoremap <silent>O :set paste<CR>O<Esc>:set nopaste<CR>i


inoremap <silent><C-j> <Esc>:set paste<CR>m`o<Esc>``:set nopaste<CR>ji
inoremap <silent><C-k> <Esc>:set paste<CR>m`O<Esc>``:set nopaste<CR>ki

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_x = '%{strftime("%c")}'


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = '\u2713'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

let NERDTreeIgnore=['node_modules', 'package-lock.json','README.md']
let NERDTreeQuitOpen=1

let g:fzf_preview_window = []

let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-i': 'split',
    \ 'ctrl-s': 'vsplit'
    \ }

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.

nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" for coc-scss
autocmd FileType scss setl iskeyword+=@-@

" map g <Plug>(easymotion-prefix)
" <Leader>f{char} to move to {char}
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)


" Gif config
map s <Plug>(easymotion-s2)
" map t <Plug>(easymotion-t2)

" s{char}{char} to move to {char}{char}
" nmap gs <Plug>(easymotion-overwin-f2)

" Move to line
map gL <Plug>(easymotion-bd-jk)
nmap gL <Plug>(easymotion-overwin-line)

" Move to word
map  gw <Plug>(easymotion-bd-w)
nmap gw <Plug>(easymotion-overwin-w)

function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

" noremap <silent><expr> / incsearch#go(<SID>config_easyfuzzymotion())


au FileType html let b:coc_root_patterns = ['.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs']


call plug#begin("~/.config/nvim/plugged")

" Plug 'terryma/vim-multiple-cursors'
Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'justinmk/vim-sneak'
Plug 'Yggdroot/indentLine'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-commentary'
" Plug 'honza/vim-snippets'
Plug 'alvan/vim-closetag'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
" Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/incsearch-fuzzy.vim'
" Plug 'haya14busa/incsearch-easymotion.vim'
" Plug 'svermeulen/vim-easyclip'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'gertjanreynaert/cobalt2-vim-theme'
call plug#end()

autocmd ColorScheme *
      \ hi CocUnusedHighlight ctermbg=NONE guibg=NONE guifg=#808080
let g:gruvbox_italicize_strings='1'
let g:gruvbox_contrast_dark='hard'
set background=dark
colorscheme gruvbox
" let g:coc_spell_spellfile = 1
set spellfile=~/.config/nvim/spell/en.utf-8.add

