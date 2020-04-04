execute pathogen#infect()

autocmd FileType python noremap <buffer> <F8> :Autopep8<CR>
let g:autopep8_max_line_length=79
let g:autopep8_pep8_passes=100
let g:autopep8_indent_size=4
let g:autopep8_disable_show_diff=1
let g:autopep8_aggressive=2

let g:goyo_margin_top = 0
let g:goyo_margin_bottom = 0
let g:goyo_width = 80
let g:goyo_height = 100
let g:goyo_linenr = 1

let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox
:set bg=dark

" show a visual line under the cursor's current line
set cursorline


let g:jedi#popup_on_dot    = 1
let g:jedi#show_call_signatures = "0"
" This depends on the completeopt option. Jedi initializes it in its ftplugin. Add the following line to your .vimrc to disable it:
autocmd FileType python setlocal completeopt-=preview


" flake8
" autocmd BufWritePost *.py call Flake8()

" show the matching part of the pair for [] {} and ()
set showmatch
set number
" Uncomment the following to have Vim jump to the last position when                " reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
syntax on
filetype plugin indent on

let &colorcolumn=join(range(81,999),",")

function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()

autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
autocmd BufNewFile *.py 0r ~/.vim/templates/skeleton.py


" autocmd VimEnter * Goyo

