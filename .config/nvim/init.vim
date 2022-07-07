call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty', {'for': 'javascript'}
Plug 'mattn/emmet-vim'
Plug 'maksimr/vim-jsbeautify', {'for': 'javascript'}
"Plug 'plasticboy/vim-markdown'
Plug 'vimwiki/vimwiki'
" Plug 'crispydrone/vim-tasks'
" Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
"Plug 'thaerkh/vim-workspace'
Plug 'airblade/vim-rooter'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" Plug 'thanthese/tortoise-typing'
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'preservim/nerdtree'
Plug 'digitaltoad/vim-pug'
Plug 'blindFS/vim-taskwarrior'
"Plug 'valloric/youcompleteme'
"Plug 'ycm-core/YouCompleteMe', { 'do': 'python3 install.py --clang-completer --rust-completer'}
Plug 'sheerun/vim-polyglot'
Plug 'davidhalter/jedi-vim'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'lifepillar/vim-solarized8'
Plug 'jdsimcoe/abstract.vim'
Plug 'yorickpeterse/happy_hacking.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'itchyny/vim-cursorword'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'vim-scripts/c.vim'
Plug 'cdelledonne/vim-cmake'
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'metakirby5/codi.vim'
Plug 'SirVer/ultisnips'
" Plug 'ap/vim-buftabline'

Plug 'ryanoasis/vim-devicons'
call plug#end()


set clipboard+=unnamedplus
set encoding=UTF-8
syntax enable
set t_Co=256

"let buftabline_numbers=1

nnoremap <SPACE> <Nop>
let mapleader=" "


set list " show hidden characters
"set listchars=tab:•·,trail:·,extends:❯,precedes:❮,nbsp:×
"set listchars=tab:\ \ ┊,trail:·,extends:»,precedes:«,nbsp:×,eol:↓
"set listchars=tab:\ \ ┊,trail:·,extends:»,precedes:«,nbsp:•,eol:⏎
set listchars=tab:\ \ ┊,trail:·,extends:»,precedes:«,nbsp:•

set laststatus=2 " always show status line
set showcmd      " always show current command

set nowrap        " disable wrap for long lines
set textwidth=0   " disable auto break long lines

set tabstop=4     " number of spaces that a <Tab> in the file counts for
set shiftwidth=4  " indent size for << and >>
set shiftround    " round indent to multiple of 'shiftwidth' (for << and >>)
set noexpandtab


set ignorecase " ignore case of letters
set smartcase  " override the 'ignorecase' when there is uppercase letters

set cursorline     " highlight current line
set cursorcolumn

set nu
set rnu

map <silent> <F8> :copen<CR>

" Disable search highlighting
"nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>


" Switch between tabs
nmap <M-1> 1gt
nmap <M-2> 2gt
nmap <M-3> 3gt
nmap <M-4> 4gt
nmap <M-5> 5gt
nmap <M-6> 6gt
nmap <M-7> 7gt
nmap <M-8> 8gt
nmap <M-9> 9gt

" Cursor configuration {{{
" ====================================================================
" Use a blinking upright bar cursor in Insert mode, a solid block in normal
" and a blinking underline in replace mode
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  let &t_SI = "\<Esc>[5 q"
  let &t_SR = "\<Esc>[3 q"
  let &t_EI = "\<Esc>[2 q"
" }}}
"

autocmd Filetype python setlocal ts=4 sw=4 expandtab!
autocmd Filetype html setlocal ts=4 sw=4 expandtab!
autocmd Filetype javascript setlocal autoindent ts=4 sw=4 noexpandtab
autocmd Filetype sass setlocal ts=4 sw=4 expandtab!
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=4 sts=4 sw=4 expandtab

colorscheme jellybeans


" Emmet
imap qq <C-Y>,


" vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


" Shortcuts
nnoremap <silent> <leader>g :vertical Gstatus<CR>
nnoremap <silent> <leader>f <C-w>gf
nnoremap <silent><C-t> :tabe<CR>
nnoremap <leader>; :vnew<CR>
nnoremap <leader>- :new<CR>
nnoremap <silent><leader><space> :w<CR>
nnoremap <silent><leader>c :bd<CR>
nnoremap <silent><leader>q :q<CR>
nnoremap <silent><leader>t :terminal<CR>
" nnoremap <leader>o O<ESC> 

" Ranger
"Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

nmap <space>r :RnvimrToggle<CR>

set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                               " Show the cursor position all the time
set iskeyword+=-                      	" treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
"set laststatus=0                        " Always display the status line
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
set showtabline=2                       " Always show tabs
"set showbufline=2                       " Always show tabs
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set autochdir                           " Your working directory will always be the same as your working directory

" You can't stop me
cmap w!! w !sudo tee %


" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c for unnamed copy
vnoremap <C-c> "+y
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" nnoremap <silent><M-t> :tabe<CR>


" vim workspace
let g:workspace_autocreate = 1
let g:workspace_session_directory = $HOME . '/.nvim/sessions/'
let g:sessions_dir= $HOME . '/.nvim/sessions/'
let g:workspace_session_disable_on_args = 1
let g:workspace_autosave=1
let g:workspace_autosave_untrailspaces = 0
let g:workspace_autosave_ignore = ['gitcommit']


" FZF
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>
nnoremap \\ :Rg <C-R><C-W><CR>


let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
" command! -bang -nargs=? -complete=dir Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.config/nvim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

fun! GotoWindow(id)
    call win_gotoid(a:id)
    MaximizerToggle
endfun

" Debugger remaps
nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

let g:vimspector_enable_mappings = 'HUMAN'
nmap, <Plug>VimspectorStepInto


" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

cabbrev F Files
cabbrev B Buffers

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)


let g:lightline = {
      \ 'component': {
	  \	'filename': '%n:%t'
	  \	},
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
"hi CursorLine cterm=NONE ctermbg=23
hi CursorLine cterm=bold
" hi CursorColumn cterm=bold ctermbg=23
hi CursorColumn cterm=bold
" highlight Normal ctermbg=none
" highlight NonText ctermbg=none
" highlight LineNr ctermfg=grey ctermbg=NONE


let g:ranger_replace_netrw = 1


"let g:rooter_targets = '.gitignore'
let g:rooter_patterns = ['package.json', ".git", "Dockerfile"]
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<TAB>'
set wrap
let g:ycm_python_interpreter_path = '/usr/bin/python2'

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
let g:mkdp_auto_start = 1

" deoplete

let g:deoplete#enable_at_startup = 1

" neosnippet
        
let g:neosnippet#enable_completed_snippet = 1

"let g:coc_global_extensions = [ 'coc-emoji', 'coc-eslint', 'coc-prettier', 'coc-tsserver', 'coc-tslint', 'coc-tslint-plugin', 'coc-css', 'coc-json', 'coc-pyls', 'coc-yaml', 'coc-html', 'coc-python', 'coc-highlight', 'coc-emmet' ]


" Move highlighted text up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

map <leader><up> :tabr<cr>
map <leader><down> :tabl<cr>
map <leader><left> :tabp<cr>
map <leader><right> :tabn<cr>


function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
\ }))

set wildmode=list:longest,list:full

let g:codi#interpreters = {
                   \ 'javascript': {
                       \ 'rightalign': 1,
                       \ 'rightsplit': 1,
                       \ 'width': 0.5
                       \ },
                   \ }

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]
