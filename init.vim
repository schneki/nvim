call plug#begin('~/.local/share/nvim/plugged')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'calviken/vim-gdscript3'
" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'leafgarland/typescript-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'derekwyatt/vim-scala'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()


"Theme
colorscheme zenburn

highlight clear SignColumn
set expandtab
set shiftwidth=2
set tabstop=2

" Enable deoplete
let g:deoplete#enable_at_startup = 1


" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'python': ['pyls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ }


" Cargo Commands
command CargoTest execute "!cargo test"
command CargoBuild execute "!cargo build"
command Cargo execute "!cargo run"
