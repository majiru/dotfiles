    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath

    source ~/.vim/vimrc

    if !has('nvim')
        set ttymouse=xterm2
    endif

    if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

    let g:airline_theme='light'
    set termguicolors
    colorscheme acme

    call plug#begin()
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ctrlpvim/ctrlp.vim'              " Fuzzy file matching
    Plug 'ntpeters/vim-better-whitespace'  " Highlight trailing whitespace
    Plug 'vim-scripts/AutoComplPop'        " Autocompletion as I type
    Plug 'fatih/vim-go'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdtree'
    Plug 'w0rp/ale'                        " In-editor linting
    Plug 'lervag/vimtex'                   " 311
    call plug#end()

