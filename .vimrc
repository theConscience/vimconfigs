" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)
call plug#begin('~/.vim/plugged')

" Color themes: "
Plug 'morhetz/gruvbox'
Plug 'arzg/vim-colors-xcode'
Plug 'wadackel/vim-dogrun'
Plug 'megantiu/true.vim'
Plug 'sainnhe/edge'
Plug 'sainnhe/everforest'
Plug 'mcmartelle/vim-monokai-bold'
Plug 'ashervb/synthwave.vim'
Plug 'artanikin/vim-synthwave84'
Plug 'relastle/bluewery.vim'
Plug 'gilgigilgil/anderson.vim'
Plug 'doums/darcula'
Plug 'flrnd/candid.vim'
Plug 'flrnd/plastic.vim'
Plug 'ludokng/vim-odyssey'
Plug 'sainnhe/archived-colors'
Plug 'Rigellute/rigel'
Plug 'lifepillar/vim-solarized8'
Plug 'xstrex/FireCode.vim'
Plug 'connorholyday/vim-snazzy'
Plug 'rhysd/vim-color-spring-night'
Plug 'zanglg/nova.vim'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'sts10/vim-pink-moon'
Plug 'Jimeno0/vim-chito'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'zcodes/vim-colors-basic'
Plug 'nightsense/vim-crunchbang'
Plug 'prognostic/plasticine'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'rhysd/vim-color-spring-night'
Plug 'https://github.com/miconda/lucariox.vim.git'
Plug 'ajmwagar/vim-deus'
Plug 'dim13/smyck.vim'
Plug 'nightsense/carbonized'
Plug 'preocanin/greenwint'
Plug 'arcticicestudio/nord-vim'
Plug 'kamwitsta/nordisk'
Plug 'KeitaNakamura/neodark.vim'
Plug 'tssm/fairyfloss.vim'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'muellan/am-colors'
Plug 'bcicen/vim-vice'
Plug 'raphamorim/lucario'
Plug 'rakr/vim-one'
Plug 'dracula/vim'
Plug 'MvanDiemen/ghostbuster'
Plug 'aereal/vim-colors-japanesque'
Plug 'crater2150/vim-theme-chroma'
Plug 'dikiaap/minimalist'
Plug 'encody/nvim'
Plug 'zaki/zazen'
Plug 'machakann/vim-colorscheme-tatami'

" Subsyntax highlighters & autocompleters: "
"Plug 'pangloss/vim-javascript', { 'for': ['js'] }
"Plug 'jelera/vim-javascript-syntax'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'dNitro/vim-pug-complete', { 'for': ['jade', 'pug'] }
"Plug 'groenewege/vim-less'
"Plug 'posva/vim-vue'
Plug 'leafoftree/vim-vue-plugin'

" Tips & Typings & Autocompletion support: "
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'

" Tmux integration: "
Plug 'christoomey/vim-tmux-navigator'

" Navigation panels: "
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/tagbar'

" Fuzzy search panel: "
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Language switcher fix "
Plug 'lyokha/vim-xkbswitch'

" Other plugins: "
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'ryanoasis/nerd-fonts'


call plug#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
let mapleader = " "

" Security
set modelines=0

"" Fix for highlight breaking on long lines
"set redrawtime=10000


" SHOW LINE NUMBERS: "

set number
set relativenumber
set nu


" Show file stats
set ruler


" VIM XKBSWITCHER CONFIG: "

let g:XkbSwitchEnabled = 1
let g:XkbSwitchIMappings = ['ru']
let g:XkbSwitchLib = '/usr/local/lib/libInputSourceSwitcher.dylib'


" CONFIGURATION FOR INDENTLINE PLUGIN: "

" let g:indentLine_setColors = 0
let g:indentLine_color_term = 400
" let g:indentLine_bgcolor_term = 202
" let g:indentLine_bgcolor_gui = '#FF5F00'


" BLINK CURSOR ON ERROR INSTEAD OF BEEPING:"
set visualbell


" SWITCHING BETWEEN CURSOR TYPES IN NORMAL AND INSERT:"

autocmd InsertEnter,InsertLeavePre * set cul!
" autocmd InsertLeavePre * set nocul
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Encoding
set encoding=utf-8

" Custom project .vimrc's
set exrc


" Whitespace: "

set nowrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set noshiftround


" Folding: "

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2


" CURSOR MOTION: "

set scrolloff=8
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim


" MOVE UP AND DOWN EDITOR LINES: "

nnoremap j gj
nnoremap k gk


" Allow hidden buffers
set hidden

" Some servers have issues with backup files, see #649 set nobackup set nowritebackup
" ' Better display for messages set cmdheight=2 '
" You will have bad experience for diagnostic messages when it's default 400
set updatetime=300

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd


" Searching: "

nnoremap / /\v
vnoremap / /\v
"set hlsearch
set nohlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search


" COLUMNS CONFIG: "

set colorcolumn=80
set signcolumn=auto


" CASH AND BACKUPS:"

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile


" Remap HELP KEY: "

inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>


" Textmate HOLDOUTS: "



" Formatting: "

map <leader>q gqip


" VISUALIZE TABS AND NEWLINES: "

set listchars=tab:▸\ ,eol:¬,space:∘
"
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL


" COLOR SCHEMES FOR TERMINAL: "

set background=dark

"set termguicolors
"set t_Co=256

if (has("termguicolors"))
 let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
 let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
 set termguicolors
else
 set t_Co=256
 "let g:synthwave_termcolors=256 " 256 color mode
endif

"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
"colorscheme solarized

"highlight Normal ctermbg=None
"highlight LineNr ctermfg=DarkGrey
"colorscheme onedark  " great theme
"colorscheme gruvbox  " great theme
" colorscheme victoras
"
"colorscheme xcodedark
"colorscheme xcodedarkhc
"colorscheme xcodelight
"colorscheme xcodelighthc
"colorscheme xcodewwdc
"
"colorscheme dogrun
"
"colorscheme true
"
"let g:edge_style = 'aura'
"let g:edge_enable_italic = 1
"let g:edge_disable_italic_comment = 1
"colorscheme edge
"
"colorscheme monokai-bold
" colorscheme synthwave84
"let g:airline_theme='synthwave'
"colorscheme synthwave
"
" For dark
"colorscheme bluewery
"let g:lightline = { 'colorscheme': 'bluewery' }
" For light
"colorscheme bluewery-light
"let g:lightline = { 'colorscheme': 'bluewery_light' }
"colorscheme anderson
"colorscheme darcula
"colorscheme candid
"colorscheme plastic
"colorscheme odyssey
"
" ARCHIVED-COLORS THEMES: "
"colorscheme atlantis
"colorscheme cryslominsa
"colorscheme desert-night
"colorscheme fairy-garden
"colorscheme grimoire
"colorscheme ice-age
"colorscheme lost-shrine
"colorscheme vanilla-cake
"
"colorscheme rigel  " great theme
"colorscheme solarized8
"colorscheme FireCode
"
" let g:everforest_background = 'soft'
"let g:everforest_background = 'medium'
"let g:everforest_background = 'hard'
" colorscheme everforest
" let g:SnazzyTransparent = 1
" colorscheme snazzy
" let g:airline_theme = 'spring_night'
" colorscheme spring-night
"colorscheme nova
"colorscheme spacemacs-theme
"colorscheme pink-moon
"colorscheme chito
"colorscheme basic-dark
"colorscheme basic-light
" colorscheme basic-eighties
"colorscheme basic-dark
"colorscheme crunchbang
"colorscheme plasticine
"
""let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
"let g:material_theme_style = 'palenight'
"let g:material_terminal_italics = 1
"let g:airline_theme = 'material'
"colorscheme material  " great theme
"
" let g:airline_theme = 'spring_night'
" colorscheme spring-night
"
"colorscheme lucariox
"colorscheme deus
"colorscheme smyck
"colorscheme carbonized-dark
"colorscheme carbonized-light
"colorscheme greenwint
"colorscheme nord
"colorscheme nordisk
let g:lightline = {}
let g:lightline.colorscheme = 'neodark'
" let g:neodark#background = '#202020'  " for changing neodark BG
colorscheme neodark  " great theme
"colorscheme fairyfloss
"let g:quantum_italics=1
"let g:quantum_black=0
"let g:airline_theme='quantum'
"colorscheme quantum
"let g:deepspace_italics=1
"let g:airline_theme='deep_space'
"colorscheme deep-space
"colorscheme amlight
"colorscheme amdark
"colorscheme amcolors
"colorscheme ampresent
"colorscheme vice
"colorscheme lucario
"let g:one_allow_italics = 1
"colorscheme one
"colorscheme dracula
"let g:ghostbuster_italics=1
"colorscheme ghostbuster
"colorscheme japanesque
"let g:chroma_underline_style = "underline"
"" or
"let g:chroma_underline_style = "bold"
"" see :help attr-list for possible values
"let g:chroma_italic_style = "bold"
"colorscheme chroma
"let g:airline_theme='minimalist'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"colorscheme minimalist  " great theme
"" nvim themes:
"colorscheme custom
"colorscheme lyla
"colorscheme molokai
"colorscheme mustang
"colorscheme wombat
"colorscheme zazen
"colorscheme tatami



" FONTS: "

let g:airline_powerline_fonts = 1
"let g:true_airline = 1
"let g:airline_theme='true'


" FZF: "

" Files Fuzzy Finder (FZF)
" set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :FZF<CR>


" NerdTree CONFIG: "

nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree

let g:NERDTreeIgnore = ['^node_modules$']

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",
    "\ "Modified"  : "#d9bf91",
    "\ "Renamed"   : "#51C9FC",
    "\ "Untracked" : "#FCE77C",
    "\ "Unmerged"  : "#FC51E6",
    "\ "Dirty"     : "#FFBD61",
    "\ "Clean"     : "#87939A",
    "\ "Ignored"   : "#808080"
    "\ }

let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ 'Modified'  :'✹',
    \ 'Staged'    :'✚',
    \ 'Untracked' :'✭',
    \ 'Renamed'   :'➜',
    \ 'Unmerged'  :'═',
    \ 'Deleted'   :'✖',
    \ 'Dirty'     :'✗',
    \ 'Ignored'   :'☒',
    \ 'Clean'     :'✔︎',
    \ 'Unknown'   :'?',
    \ }

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()


" TagBar CONFIG: "
nmap <F8> :TagbarToggle<CR>


" Javasctipt LIBRARIES CONFIG: "
let g:used_javascript_libs = 'lodash,vue'


" Vim VUE Plugin CONFIG: "
let g:vim_vue_plugin_config = {
  \'syntax': {
  \   'template': ['html'],
  \   'script': ['javascript'],
  \   'style': ['less'],
  \},
  \'full_syntax': [],
  \'initial_indent': [],
  \'attribute': 0,
  \'keyword': 0,
  \'foldexpr': 0,
  \'debug': 0,
  \}


" Prettier CONFIG: "

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" Cool Five REMAPS: "

" #1 yank big Y until end of line, not all line
nnoremap Y y$
" #2 keeping moving cursor centered at find lookups and line concatenation
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ'z
" #3 fixing Undo behaviour with a breakpoints
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
" #4 fixing jumplist lag on back jump
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
" #5 moving lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==


" MY REMAPS: "

" for exit to normal mode through fast 'jk' combination
inoremap jk <ESC>
" for xkb switcher working not only at ESC
inoremap <C-c> <esc>
" for indent with familiar cmd + ]
"   using iterm2 hotkeys for cmd bindings
"nnoremap <D-]> >>
"nnoremap <D-[> <<
inoremap >> <C-t>
inoremap << <C-d>
" For selection saving after changing blocks indentation:
" and editor stays in Visual mode, not exiting to Normal,
" so — . operator not working as expected.
vnoremap > >gv
vnoremap < <gv


" CoC CONFIG: "

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-vetur',
  \ ]

" Use tab for trigger CoC completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Not used with <c-space> language imput changer
"" Use <c-space> to trigger CoC completion.
"inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm CoC completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)


" Emmet CONFIG: "

let g:user_emmet_install_global = 0
autocmd FileType html,css,vue EmmetInstall
let g:user_emmet_mode='a'
let g:user_emmet_leader_key='<C-E>'


" AUTOCOMMANDS: "

" Trim whitespace fn:

fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup WOW_SONG
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
augroup END
