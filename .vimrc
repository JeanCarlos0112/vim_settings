set nocompatible
call plug#begin()

Plug 'tpope/vim-sensible'

Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/seoul256.vim.git'

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Using a non-default branch
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Use 'dir' option to install plugin in a non-default directory
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }

" Post-update hook: run a shell command after installing or updating the plugin
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Post-update hook can be a lambda expression
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" If the vim plugin is in a subdirectory, use 'rtp' option to specify its path
Plug 'nsf/gocode', { 'rtp': 'vim' }

" On-demand loading: loaded when the specified command is executed
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" On-demand loading: loaded when a file with a specific file type is opened
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" TokyoNight Theme
Plug 'ghifarit53/tokyonight-vim'

" Airline
Plug 'vim-airline/vim-airline'

" Airline Themes
Plug 'vim-airline/vim-airline-themes'

" Lightline
Plug 'itchyny/lightline.vim'

call plug#end()

syntax on

ab main int main(int argc, char *argv[]) { }

ab sc scanf("%x", " ");

ab pr printf("%x", " ");

ab mtd int method(void){ }

ab cif if (condition) else { }

set expandtab
set tabstop=2
set shiftwidth=2

set number

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

let g:airline_theme = "tokyonight"

let g:lightline = {'colorscheme': 'tokyonight'}

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '

let g:airline#extensions#tabline#left_alt_sep = '|'

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Up> :tabfirst<CR>
nnoremap <C-Down> :tablast<CR>

let g:airline_section_b='%{strftime("📅 %d/%m/%Y")}'

let g:airline_section_z = '%{printf("⌛ %d%% ⏐ 📝 %d /%d ln ⏐ 📍%d", 100 * line(".") / line("$"), line("."), line("$"), col("."))}'

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use arrows to navigate coc suggestions
inoremap <expr> <Down>  pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>    pumvisible() ? "\<C-p>" : "\<Up>"

