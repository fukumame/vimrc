syntax on
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set cursorline "行もカーソル位置を表示

" デフォルトでツリーを表示させる
autocmd VimEnter * execute ':NERDTreeTabsOpen'
autocmd VimEnter * wincmd l

" 隠しファイルを表示させる
let NERDTreeShowHidden = 1
let g:NERDTreeShowBookmarks=1

"次のタブへ移動
noremap <C-Right> gt

" 前のタブへ移動
noremap <C-Left> gT

" ウィンドウの移動
noremap sw <C-w>w

" 新しいタブ
noremap tn :<C-u>tabnew<CR>

" バッファ一覧
noremap <S-b> :Unite buffer<CR>

" ファイル一覧
noremap <S-f> :Unite -buffer-name=file file<CR>

" 最近使ったファイルの一覧
noremap <S-h> :Unite file_mru<CR>

" Tree形式で表示
noremap <C-t> :NERDTreeTabsToggle<CR>

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/atsushi-fukuda/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/atsushi-fukuda/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'tpope/vim-endwise'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'

NeoBundle "tyru/caw.vim.git"
nmap <C-K> <Plug>(caw:i:toggle)
vmap <C-K> <Plug>(caw:i:toggle)

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
