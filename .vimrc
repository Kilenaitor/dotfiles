" syntax/editing
syntax on
set t_Co=256
colorscheme Succulent
set relativenumber
set number
filetype plugin on
set spell spelllang=en_us
set nowrap
set title

" auto_complete
set wildmode=longest,list,full
set wildmenu

" 4 spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set backspace=indent,eol,start
" show last command
set showcmd
" 80 character width
hi LineTooLong cterm=bold ctermbg=red guibg=LightYellow
match LineTooLong /\%>80v.\+/
highlight ColorColumn ctermbg=gray
set colorcolumn=80
" allow different indentations per file
filetype indent on
" only redraw what's needed
set lazyredraw
" show matching [{(
set showmatch
" search as characters are entered
set incsearch
set ignorecase
" highlight search results
set hlsearch
" enable folding
set foldenable
" unfold to begin
set foldlevelstart=10
" max level of folding
set foldnestmax=10
" fold on the indent
set foldmethod=indent
" visual move
nnoremap j gj
nnoremap k gk
" status line
set laststatus=2
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..)
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

au BufWinLeave * mkview

set term=xterm-256color

fun! IgnoreCamelCaseSpell()
    syn match CamelCase /\<[A-Z][a-z]\+[A-Z].\{-}\>/ contains=@NoSpell transparent
    syn cluster Spell add=CamelCase
endfun
autocmd BufRead,BufNewFile * :call IgnoreCamelCaseSpell()

fun! IgnoreSnakeCaseSpell()
    syn match SnakeCase /<[A-Z][a-z]+_[A-Z].{-}>/ contains=@NoSpell transparent
    syn cluster Spell add=SnakeCase
endfun
autocmd BufRead,BufNewFile * :call IgnoreSnakeCaseSpell()

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

" file_types
au BufRead,BufNewFile *.php set filetype=php
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" syntax highlighting
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

