nnoremap <F12> :so $MYVIMRC<CR>
set history=10000
let mapleader = ','
let g:mapleader = ','
set timeoutlen=3000 ttimeoutlen=100
set updatetime=250
inoremap <C-c> <Esc>
nnoremap Q <NOP>
cnoreabbrev help vert help
if has("terminal") && has("nvim")
 nnoremap <silent> <F7> :call <SID>ToggleTerminal()<CR>
 tnoremap <silent> <F7> <C-\><C-n><Bar>:wincmd p<CR>
 tnoremap <Esc> <C-\><C-n>
endif
set nrformats-=octal
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rhysd/vim-clang-format'
Plug 'chriskempson/base16-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'valloric/listtoggle'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'neoclide/coc.nvim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/context_filetype.vim'
Plug 'ervandew/supertab'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-liquid'
Plug 'eagletmt/neco-ghc'
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-capslock'
Plug 'wellle/targets.vim'
Plug 'christoomey/vim-sort-motion'
Plug 'terryma/vim-expand-region'
Plug 'Valloric/MatchTagAlways'
Plug 'FooSoft/vim-argwrap'
Plug 'gerardbm/vim-md-headings'
Plug 'matze/vim-move'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-characterize'
Plug 'tyru/open-browser.vim'
Plug 'junegunn/goyo.vim'
Plug 'mattn/webapi-vim'
Plug 'mattn/emmet-vim'
Plug 'vimwiki/vimwiki'
Plug 'xavierdiiii/lib/llvm-10/lib'
Plug 'vhda/verilog_systemverilog.vim'

au BufNewFile,BufRead *.sv,*.svh,*.vh,*.v so ~/.vim/syntax/verilog_systemverilog.vim
nnoremap <Leader>h :bprevious<CR>
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>k :bfirst<CR>
nnoremap <Leader>j :blast<CR>
call plug#end()

let g:gitgutter_max_signs             = 5000
let g:gitgutter_sign_added            = '+'
let g:gitgutter_sign_modified         = '»'
let g:gitgutter_sign_removed          = '_'
let g:gitgutter_sign_modified_removed = '»╌'
let g:gitgutter_map_keys              = 0
let g:gitgutter_diff_args             = '--ignore-space-at-eol'

nmap <Leader>j <Plug>(GitGutterNextHunk)zz
nmap <Leader>k <Plug>(GitGutterPrevHunk)zz
nnoremap <silent> <C-g> :call <SID>ToggleGGPrev()<CR>zz
nnoremap <Leader>ga :GitGutterStageHunk<CR>
nnoremap <Leader>gu :GitGutterUndoHunk<CR>

nnoremap <C-s> :call <SID>ToggleGstatus()<CR>
nnoremap <Leader>gv :Gvdiffsplit<CR>:windo set wrap<CR>
nnoremap <Leader>gh :Gvdiffsplit HEAD<CR>:windo set wrap<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gg :call <SID>GrepWrapper('Gclog', '-i -G', '--')<CR>
nnoremap <silent> <Leader>gz :call <SID>PreventGV()<CR>
vnoremap <silent> <Leader>gz :call <SID>PreventGV()<CR>

let g:session_autosave  = 'no'
let g:session_autoload  = 'no'
let g:session_directory = '~/.vim/sessions/'

nnoremap <C-b> :OpenSession<CR>
let g:NERDDefaultAlign          = 'left'
let g:NERDSpaceDelims           = 1
let g:NERDCompactSexyComs       = 1
let g:NERDCommentEmptyLines     = 0
let g:NERDCreateDefaultMappings = 0
let g:NERDCustomDelimiters      = {
   \ 'python': {'left': '#'},
   \ }

nnoremap cc :call NERDComment(0,'toggle')<CR>
vnoremap cc :call NERDComment(0,'toggle')<CR>
nnoremap <silent> <C-n> :call <SID>ToggleNERDTree()<CR>
let $FZF_PREVIEW_COMMAND = 'cat {}'
nnoremap <C-f><C-f> :Files<CR>
nnoremap <C-f><C-g> :Commits<CR>
nnoremap <C-f><Space> :BLines<CR>
nnoremap <Leader>h :lprevious<CR>zz
nnoremap <Leader>l :lnext<CR>zz

let g:lt_location_list_toggle_map = '<leader>e'
let g:lt_quickfix_list_toggle_map = '<leader>q'

let g:ctrlp_map                 = '<C-p>'
let g:ctrlp_cmd                 = 'CtrlPBuffer'
let g:ctrlp_working_path_mode   = 'rc'
let g:ctrlp_custom_ignore       = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_match_window        = 'bottom,order:btt,min:1,max:10,results:85'
let g:ctrlp_show_hidden         = 1
let g:ctrlp_follow_symlinks     = 1
let g:ctrlp_open_multiple_files = '0i'

nnoremap <Leader>u :UndotreeToggle<CR>
let g:SuperTabDefaultCompletionType = '<TAB>'

imap <C-s> <Plug>(neosnippet_expand_or_jump)
smap <C-s> <Plug>(neosnippet_expand_or_jump)
xmap <C-s> <Plug>(neosnippet_expand_target)

smap <expr><TAB>
   \ neosnippet#expandable_or_jumpable() ?
   \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
xmap gi <Plug>(EasyAlign)
nmap gi <Plug>(EasyAlign)

vnoremap <Leader>x :Tabularize /
vnoremap <Leader>X :Tabularize /.*/<Left><Left><Left>
let g:AutoPairsFlyMode        = 0
let g:AutoPairsMultilineClose = 0
let g:AutoPairsShortcutJump   = '<C-z>'
let g:AutoPairsShortcutToggle = '<C-q>'

if has("nvim")
 autocmd VimEnter,BufEnter,BufWinEnter * silent! iunmap <buffer> <M-">
endif
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.xml,*.html.erb,*.md'

autocmd FileType erb let b:surround_{char2nr('=')} = "<%= \r %>"
autocmd FileType erb let b:surround_{char2nr('-')} = "<% \r %>"

autocmd FileType markdown,liquid let b:surround_{char2nr('i')} = "_\r_"
autocmd FileType markdown,liquid let b:surround_{char2nr('o')} = "**\r**"
autocmd FileType markdown,liquid let b:surround_{char2nr('h')} = "\[\r\]\(//\)"
autocmd FileType markdown,liquid let b:surround_{char2nr('c')} = "“\r”"
autocmd FileType markdown,liquid let b:surround_{char2nr('v')} = "‘\r’"
autocmd FileType markdown,liquid let b:surround_{char2nr('x')} = "«\r»"
autocmd FileType markdown,liquid let b:surround_{char2nr('e')} = "\[\r\]
   \\(\){:rel=\"nofollow noopener noreferrer\" target=\"_blank\"}"
autocmd FileType markdown,liquid let b:surround_{char2nr('j')} = "!\[\r\]
   \\(/images/\){: .align-}"

imap <expr><C-l> deoplete#smart_close_popup()."\<Plug>CapsLockToggle"
cmap <silent> <C-l> <Plug>CapsLockToggle

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

let g:argwrap_tail_comma    = 1
let g:argwrap_padded_braces = '[{'

nnoremap <Leader>W :ArgWrap<CR>
let g:move_key_modifier = 'S'
let g:tmux_navigator_no_mappings = 1
let g:openbrowser_browser_commands = [{
   \ 'name': 'w3m',
   \ 'args': 'tmux new-window w3m {uri}',
   \ }]

nmap <Leader>gl <Plug>(openbrowser-open)
set scrolloff=0
set showmode
set showcmd
set wildmenu
set ruler
set cmdheight=2
set backspace=eol,start,indent
set lazyredraw
set showmatch
set matchtime=2
set noerrorbells
set novisualbell

set cursorline
set nocursorcolumn
set laststatus=2
syntax enable
nnoremap <Leader>B :call <SID>SynStack()<CR>
set noswapfile
set nobackup
set nowritebackup
set encoding=utf8
set fileformats=unix,dos,mac
set autoread
let g:f5msg = 'Buffer reloaded.'
nnoremap <F5> :e<CR>:echo g:f5msg<CR>
filetype plugin on
filetype indent on
nnoremap <Leader>s :update<CR>
nnoremap <Leader>S :bufdo update<CR>
cnoremap WW w !sudo tee > /dev/null %
nnoremap <F2> :call <SID>RenameFile()<CR>

nnoremap yab :%y<CR>
nnoremap Yab :%y +<CR>
nnoremap dab :%d<CR>
nnoremap vab ggVG

set hidden
nnoremap <Leader>bd :call <SID>CustomCloseBuffer()<CR>
nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <Leader>bb :edit <C-R>=expand("%:p:h")<CR>/
nnoremap <Leader>bg :buffers<CR>:buffer<Space>
nnoremap <Leader>bw :lcd %:p:h<CR>:pwd<CR>
nnoremap <Leader>by :let @+=expand("%:p")<CR>
set fileignorecase
try
 set switchbuf=useopen,usetab,newtab
catch
endtry

nnoremap <Leader>td :tabclose<CR>
nnoremap <Leader>to :tabonly<CR>
nnoremap <Leader>tt :tabedit <C-R>=expand("%:p:h")<CR>/
nnoremap <Leader>tr :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <Leader>ty :execute 'silent! tabmove ' . tabpagenr()<CR>

map <Leader>, <C-w>
set winminheight=0
set winminwidth=0
set splitbelow
set splitright
set fillchars+=stlnc:\/,vert:│,fold:―,diff:―
map <C-w>- :split<CR>
map <C-w>. :vsplit<CR>
map <C-w>j :close<CR>
map <C-w>x :q!<CR>
map <C-w>, <C-w>=
if bufwinnr(1)
 map + :resize +1<CR>
 map - :resize -1<CR>
 map < :vertical resize +1<CR>
 map > :vertical resize -1<CR>
endif
nnoremap <silent> <C-w>f :call <SID>ToggleResize()<CR>
nnoremap <silent> <C-w>l :wincmd p<CR>:echo "Last window."<CR>
nnoremap <silent> <C-w>p :wincmd w<CR>:echo "Previous window."<CR>
nnoremap <silent> <C-w>n :wincmd W<CR>:echo "Next window."<CR>
nnoremap <silent> <C-w>o :wincmd o<CR>:echo "Only one window."<CR>

nnoremap <silent> <M-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <M-j> :TmuxNavigateDown<CR>
nnoremap <silent> <M-k> :TmuxNavigateUp<CR>
nnoremap <silent> <M-l> :TmuxNavigateRight<CR>
noremap <Leader><BS> mmHmt:%s/<C-v><CR>//ge<CR>'tzt`m
nnoremap <silent> <Leader>. :pclose<CR>
nnoremap <silent> <M-d> :wincmd P<CR>5<C-e>:wincmd p<CR>
nnoremap <silent> <M-u> :wincmd P<CR>5<C-y>:wincmd p<CR>
set autoindent
set smartindent
set noexpandtab
set smarttab
set shiftwidth=1
set tabstop=1
nnoremap <TAB> >>
nnoremap <S-TAB> <<
vnoremap <TAB> >gv
vnoremap <S-TAB> <gv
inoremap <TAB> <C-i>
inoremap <S-TAB> <C-d>
set list
let g:f6msg = 'Toggle list.'
nnoremap <F6> :set list!<CR>:echo g:f6msg<CR>
set listchars=tab:│\ ,trail:¬
set whichwrap+=<,>,h,l
set nostartofline
set wrap
set linebreak
set showbreak=├——»
set textwidth=0
set nomore
set number
set numberwidth=2
let g:f3msg = 'Toggle line numbers.'
nnoremap <silent> <F3> :set number!<CR>:echo g:f3msg<CR>
set relativenumber
nnoremap <silent> <F4> :set norelativenumber!<CR>:echo g:f4msg<CR>
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')

vnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
vnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')

nnoremap <Home> g^
nnoremap <End> g$

vnoremap <Home> g^
vnoremap <End> g$

nnoremap <silent> ñ :call <SID>ToggleCPosition('')<CR>
vnoremap <silent> ñ <Esc>:call <SID>ToggleCPosition('normal! gv')<CR>

nnoremap <C-j> J
nnoremap <C-k> i<CR><Esc>

nnoremap cx yyP
nnoremap cv yyp

set foldmethod=marker

autocmd BufReadPost *
   \ if line("'\"") > 0 && line("'\"") <= line("$") |
   \   exe "normal! g`\"" |
   \ endif

inoremap <C-a> <C-O>0
inoremap <C-e> <C-O>$
inoremap <expr><C-b> deoplete#smart_close_popup()."\<Left>"
inoremap <expr><C-f> deoplete#smart_close_popup()."\<Right>"
inoremap <C-d> <DEL>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <DEL>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-v> <C-r>"
cnoremap <C-q> <S-Right><C-w>
set hlsearch
set incsearch
set wrapscan
set ignorecase
set smartcase
set magic
set maxmempattern=1000
nnoremap <Space> /
nnoremap <Leader><Space> ?
nnoremap <silent> <Leader><CR> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hlsearch<CR>
vnoremap <silent> <Leader><CR> :<C-U>call <SID>VSetSearch()<CR>:set hlsearch<CR>
nnoremap <Leader>m :noh<CR>

vnoremap <silent> <Space> :<C-U>call <SID>RangeSearch('/')<CR>
   \ :if strlen(g:srchstr) > 0
   \ \|exec '/'.g:srchstr\|endif<CR>n
vnoremap <silent> ? :<C-U>call <SID>RangeSearch('?')<CR>
   \ :if strlen(g:srchstr) > 0
   \ \|exec '?'.g:srchstr\|endif<CR>N

nnoremap <Leader>vg :vimgrep /<C-R>//j %<CR>
nnoremap <Leader>vf :vimgrep /<C-R>//j **/*.

autocmd QuickfixCmdPre grep,grepadd,vimgrep,vimgrepadd,helpgrep copen
set grepprg=grep\ -nHi
nnoremap <Leader>vv :call <SID>GrepWrapper('grep!', '', '%')<CR>
nnoremap <Leader>vn :call <SID>GrepWrapper('grep!', '-R
   \ --exclude-dir={.git,.svn,.jekyll-cache,_site}
   \ --exclude=LICENSE', '')<CR>
nnoremap <Leader>vm :call <SID>GrepWrapper('grepadd!', '', '%')<CR>
nnoremap <Leader>va :call <SID>GrepWrapper('grep!', '', '##')<CR>
nnoremap <Leader>n :cnext<CR>zz
nnoremap <Leader>N :cprev<CR>zz
set switchbuf=useopen
nnoremap <Leader>r :%s/<C-R>///g<Left><Left>
vnoremap <Leader>r :s/\%V<C-R>/\%V//g<Left><Left>
nnoremap <Leader>R :bufdo %s/<C-R>///ge<Left><Left><Left>
nnoremap <Leader>Q :cdo %s/<C-R>///ge<Left><Left><Left>
nnoremap <Leader>aa :argadd<space>
nnoremap <Leader>ad :argdelete<space>
nnoremap <Leader>an :args **/*.
nnoremap <Leader>al :call <SID>DisplayArglist()<CR>:argument<space>
nnoremap <Leader>z ~
vnoremap <Leader>z y:call setreg('', ToggleCase(@"), getregtype(''))<CR>gv""Pgv
vnoremap ~ y:call setreg('', ToggleCase(@"), getregtype(''))<CR>gv""Pgv
let g:f8msg = 'Toggle spell checking.'
nnoremap <silent> <F8> :setlocal spell!<CR>:echo g:f8msg<CR>
nnoremap <silent> <F9> :call <SID>ToggleSpelllang()<CR>
nnoremap zl ]s
nnoremap zh [s
nnoremap zp z=
vnoremap <Leader>y "+y<Esc>
nnoremap <Leader>p "+p
nnoremap gV `[v`]
nnoremap <Leader>tf :retab!<CR>
vnoremap <Leader>tf :retab!<CR>
" Run code in a tmux window
augroup tmuxy
 autocmd FileType javascript,lua,perl,php,python,ruby,sh
    \ nnoremap <silent> <buffer> <Leader>ij
    \ :call <SID>Tmuxy()<CR>
augroup end
augroup scripty
 autocmd FileType javascript,lua,perl,php,python,ruby,sh
    \ nnoremap <silent> <buffer> <Leader>ii
    \ :call <SID>Scripty()<CR>
augroup end

" Toggle Terminal
function! s:ToggleTerminal()
 if bufexists('terminal')
  call win_gotoid(s:winZsh)
  norm! i
 else
  execute ':below 10sp term://$SHELL'
  keepalt file terminal
  let s:winZsh = win_getid()
  norm! i
 endif
endfunction

" Show syntax highlighting groups
function! s:SynStack()
 if !exists('*synstack')
  return
 endif
 echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction

" Rename file
function! s:RenameFile()
 let l:old_name = expand('%')
 let l:new_name = input('New file name: ', expand('%'), 'file')
 if l:new_name !=# '' && l:new_name !=# l:old_name
  exec ':saveas ' . l:new_name
  exec ':silent !rm ' . l:old_name
  redraw!
 endif
endfunction

function! s:CustomCloseBuffer()
 let l:currentBufNum = bufnr('%')
 let l:alternateBufNum = bufnr('#')

 if buflisted(l:alternateBufNum)
  buffer #
 else
  bnext
 endif

 if bufnr('%') == l:currentBufNum
  new
 endif

 if buflisted(l:currentBufNum)
  exec ':bdelete! ' . l:currentBufNum
 endif
endfunction

autocmd BufEnter * call <SID>CloseLastBuffer()
function! s:CloseLastBuffer()
 if &buftype ==# 'quickfix' || &buftype ==# 'nofile'
  if winnr('$') < 2
   quit!
  endif
 endif
endfunction

function! s:DisplayArglist() abort
 let l:argnum = 0
 let l:lenargc = len(argc())
 for l:arg in argv()
  let l:argnum += 1
  let l:filename = fnamemodify(l:arg, ':t')
  let l:changed =
     \ getbufinfo(bufname('^' . l:arg . '$'))[0].changed == 1
     \ ? '+'
     \ : ' '
  let l:current = expand('%') ==# l:arg ? '%' : ' '
  echo printf( '%-*d %s%s %s',
     \ l:lenargc, l:argnum, l:current, l:changed, l:filename)
 endfor
endfunction

" Toggle maximize window and resize windows
function! s:ToggleResize() abort
 if winnr('$') > 1
  if exists('t:zoomed') && t:zoomed
   execute t:zoom_winrestcmd
   let t:zoomed = 0
   echo 'Windows resized.'
  else
   let t:zoom_winrestcmd = winrestcmd()
   resize
   vertical resize
   let t:zoomed = 1
   echo 'Window maximized.'
  endif
 endif
endfunction
autocmd VimEnter * autocmd WinEnter * let t:zoomed = 0

function! s:RangeSearch(direction)
 call inputsave()
 let g:srchstr = input(a:direction)
 call inputrestore()
 if strlen(g:srchstr) > 0
  let g:srchstr = g:srchstr.
     \ '\%>'.(line("'<")-1).'l'.
     \ '\%<'.(line("'>")+1).'l'
 else
  let g:srchstr = ''
 endif
endfunction

function! s:VSetSearch()
 let l:temp = @@
 norm! gvy
 let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
 let @@ = l:temp
endfunction

function! QFCounter() abort
 let l:results = len(getqflist())
 if l:results > 0
  copen
 else
  cclose
 endif
 echo 'Found ' . l:results . ' matches.'
endfunction

function! s:GrepWrapper(cmd, dir, scope) abort
 cclose
 let l:pattern = substitute(@/, '\\V', '', '')
 let l:pattern = substitute(pattern, '\\<', '', '')
 let l:pattern = substitute(pattern, '\\>', '', '')
 let l:pattern = escape(pattern, '"')
 let l:pattern = escape(pattern, '%')
 let l:pattern = escape(pattern, '#')
 silent execute a:cmd . ' ' . a:dir . ' "' . l:pattern . '" ' . a:scope
 redraw!
 set hlsearch
 call QFCounter()
endfunction
command! -nargs=+ -complete=command Windo
   \ let s:currentWindow = winnr() |
   \ execute 'windo <args>' |
   \ exe s:currentWindow . 'wincmd w'

function! s:ToggleColorColumn()
 if !exists('s:color_column_old') || s:color_column_old == 0
  let s:color_column_old = &colorcolumn
  Windo let &colorcolumn = 0
 else
  Windo let &colorcolumn = s:color_column_old
  let s:color_column_old = 0
 endif
endfunction

function! s:ToggleNERDTree() abort
 if bufname('%') != ""
  if exists("g:NERDTree") && g:NERDTree.IsOpen()
   if &filetype ==# 'nerdtree'
    execute ':NERDTreeClose'
   else
    execute ':NERDTreeFocus'
   endif
  else
   execute ':NERDTreeFind'
  endif
 else
  execute ':NERDTreeToggleVCS'
 endif
endfunction

function! s:TagbarBufName() abort
 if !exists('t:tagbar_buf_name')
  let s:buffer_seqno += 1
  let t:tagbar_buf_name = '__Tagbar__.' . s:buffer_seqno
 endif
 return t:tagbar_buf_name
endfunction

function! s:ToggleTagbar() abort
 let tagbarwinnr = bufwinnr(s:TagbarBufName())
 if tagbarwinnr != -1
  if &modifiable
   execute tagbarwinnr 'wincmd w'
  else
   execute ':TagbarClose'
  endif
 else
  execute ':TagbarOpen'
 endif
endfunction

function! s:KeywordDensity() abort
 silent update

 let s:sf = " | sed '1 { /^---/ { :a N; /\\n---/! ba; d }  }'"
 let s:sc = " | sed 's/{% comment.*endcomment %}//g'"
 let s:sh = " | sed 's/<[^>]*.//g'"
 let s:wc = " | wc -w"
 let s:get_words = system("cat " . expand('%') . s:sf. s:sc . s:sh . s:wc)
 let s:int_words = str2nr(s:get_words)
 let s:str_words = string(s:int_words)

 let s:match_count = ""
 redir => s:match_count
 silent exec '%s/' . @/ . '//gne'
 redir END

 if ! empty(s:match_count)
  let s:str_keys = split(s:match_count)[0]
  let s:flt_keys = str2float(s:str_keys)

  let s:flt_dens = (s:flt_keys/s:int_words)*100
  let s:str_dens = string(s:flt_dens)

  echo '> ' . s:str_keys . ' of ' . s:str_words . ' (' . s:str_dens . '%)'
 else
  echo '> 0 of ' . s:str_words . ' (0%, pattern not found)'
 endif
endfunction

function! s:RemoveMdLink() abort
 let [l, c] = searchpos('\v\[[^]]*]\([^)]*\)', 'ncW')
 if l > 0 && c > 0
  if getline(".")[col(".")-1] ==# "["
   norm! xf]vf)d
  else
   call cursor(l, c)
  endif
 endif
endfunction

function! s:Tmuxy() abort
 if exists('$TMUX')
  update
  let s:runner = <SID>Runners()
  let s:cmdk = 'tmux kill-window -t run'
  let s:cmdn = 'tmux new-window -n run'
  let s:cmds = " '" . s:runner . " " . expand("%:p") . " ; read'"
  call system(s:cmdk)
  call system(s:cmdn . s:cmds)
 else
  echo 'Tmux is not running.'
 endif
endfunction

function! s:Scripty() abort
 update
 let s:runner = <SID>Runners()
 let s:cmd = s:runner . " " . expand("%:p")
 call <SID>Commander(s:cmd)
endfunction

function! s:Runners() abort
 if &filetype =~# 'javascript'
  let s:run = 'node'
 elseif &filetype =~# 'lua'
  let s:run = 'lua'
 elseif &filetype =~# 'perl'
  let s:run = 'perl'
 elseif &filetype =~# 'php'
  let s:run = 'php'
 elseif &filetype =~# 'python'
  let s:run = <SID>PyShebang()
 elseif &filetype =~# 'ruby'
  let s:run = 'ruby'
 elseif &filetype =~# 'sh'
  let s:run = 'bash'
 else
  let s:run = 'empty'
 endif
 return s:run
endfunction

function! s:PyShebang() abort
 if getline(1) =~# '^#!.*/bin/env\s\+python3\>'
  return "python3"
 else
  return "python"
 endif
endfunction

function! s:Generator(ext, ft) abort
 update
 let l:inp = expand('%')
 let l:out = expand('%:r') . a:ext
 if a:ft ==# 'tex'
  let l:cmd = system('pdflatex ' . l:inp)
 elseif a:ft ==# 'markdown'
  if a:ext ==# '.html'
   let l:opt = '--mathjax '
  elseif a:ext ==# '.epub'
   let l:opt = '-t epub2 --webtex '
  elseif a:ext ==# '.pdf'
   let l:opt = '-V fontsize=12pt
      \ -V papersize=a4
      \ -V geometry:margin=2.5cm '
  endif
  let l:cmd = system('pandoc -s ' . l:opt . l:inp . ' -o ' . l:out)
 elseif a:ft ==# 'plantuml'
  let l:cmd = system('plantuml ' . l:inp . ' ' . l:out)
 elseif a:ft ==# 'dot'
  let l:cmd = system('dot -Tpng ' . l:inp . ' -o ' . l:out)
 elseif a:ft ==# 'eukleides'
  let l:eps = expand('%:r') . '.eps'
  let l:cmd = system('eukleides ' . l:inp)
 elseif a:ft ==# 'asy'
  let l:eps = expand('%:r') . '.eps'
  let l:cmd = system('asy ' . l:inp)
 elseif a:ft ==# 'pp3'
  let l:eps = expand('%:r') . '.eps'
  let l:cmd = system('pp3 ' . l:inp)
 elseif a:ft ==# 'gnuplot'
  let l:opt = ' -e "set terminal png; set output ''' . l:out . '''" '
  let l:cmd = system('gnuplot' . l:opt . l:inp)
 elseif a:ft ==# 'pov'
  let l:cmd = system('povray -D ' . l:inp)
 endif
 if v:shell_error ==# 0
  pclose
  if a:ft =~# '\(eukleides\|asy\|pp3\)'
   call <SID>EPS2PNG(l:eps, l:out)
  endif
  call <SID>Previewer(l:out)
 else
  call <SID>WinPreview()
  exec '0put =l:cmd'
  call <SID>ResizeWinPreview()
 endif
endfunction
set expandtab
set backspace=indent,eol,start

inoremap <C-W> <C-\><C-O>dB
filetype plugin indent on


au BufNewFile,BufRead *.vr,*.vri,*.vrh      setf vera

" Verilog HDL
au BufNewFile,BufRead *.v           setf verilog
"
" " Verilog-AMS HDL
au BufNewFile,BufRead *.va,*.vams       setf verilogams
"
"" SystemVerilog
au BufNewFile,BufRead *.sv,*.svh        setf systemverilog

" VHDL
au BufNewFile,BufRead *.hdl,*.vhd,*.vhdl,*.vbe,*.vst,*.vho  setf vhdl"
set nohlsearch
