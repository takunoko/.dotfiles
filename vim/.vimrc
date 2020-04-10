"文字のエンコードが utf-8 じゃないと、helpで無限loooooopになる可能性が。
"変更する場合は、$HOME/.vim/bundle/vimdoc-ja/doc/tags-ja の1行目を変更。

"===================================-
"　　　　　　システム設定
"===================================-
	"バックアップファイルをつくるディレクトリ
	set backupdir+=$HOME/.dotfiles/vim
	"スワップファイル用のディレクトリ
	set directory+=$HOME/.dotfiles/vim
	"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
	set smarttab
	"Visual blockモードでフリーカーソルを有効にする
	set virtualedit=block
	"コマンドライン補完するときに強化されたものを使う
	set wildmenu
	"ウィンドウの幅より長い行は折り返して、次の行に続けて表示する
	set wrap
	" OSTYPE に現在のOS情報を入れる
	" Darwin \n"ならMac
	" Linux\n"ならlinux
	let OSTYPE = system('uname')
	" ヤンクした内容をクリップボードに常にコピー
	" set guioptions+a "GUIバージョンの設定
	set clipboard+=autoselect "CUIバージョンの設定
"================================
"				検索に関する設定
"================================
	"小文字で検索の時、大文字小文字を区別しない。
	set ignorecase
	"大文字がある場合のみ区別
	set smartcase

"================================
"　　　　　　表示設定
"================================
	"全角スペース(　)を視覚化
	highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
	au BufNewFile,BufRead * match ZenkakuSpace /　/
	" カレント行に下線を引く
	set cursorline
	"行番号表示
	set number
	"改行コードを自動認識
	set fileformats=unix,dos,mac
	"ビープ音を鳴らさない
	set vb t_vb=
	"新しい行のインデントを現在行と同じにする
	set autoindent
	"閉じ括弧が入力されたとき、対応する括弧を表示する
	set showmatch
	"□や○の文字があっても、カーソルの位置がずれないようにする
	set ambiwidth=double
	"スプラッシュ(起動時のメッセージ)を表示しない
	"set lazyredraw
	"タイトルを表示
	set title
	"入力中のコマンドをステータスに表示す
	set laststatus=2
	"コメント文の色を変更
	highlight Comment ctermfg=DarkCyan
	"色を表示する
	syntax on
	"BackSpaceで文字を消せるようにする。
	set backspace=2
	"現在のモード表示
	set showmode
	"文字コードをそれらしいので読み込む。
	" 最初にutf-8があると、常にそれで読んじゃう気がするけど...
	set encoding=utf-8
	set fileencodings=utf-8,ucs-bom,euc-jp,iso-2022-jp,sjis,cp932,default
	" Shift + 矢印でウィンドウサイズを変更
	nnoremap <S-Left>  <C-w><<CR>
	nnoremap <S-Right> <C-w>><CR>
	nnoremap <S-Up>    <C-w>-<CR>
	nnoremap <S-Down>  <C-w>+<CR>

""=============================
"　　　　　インデント
"=============================
	"タブが対応する空白の数
	set tabstop=2
	"タブやバックスペースの使用等の編集操作をするときに、タブが対応する空白の数
	set softtabstop=2
	"インデントの各段階に使われる空白の数
	set shiftwidth=2
	" タブを挿入するとき、代わりに空白を使わない
	" set noexpandtab
	" タブをスペースで使う
	set expandtab
	"対応する()の入力
	""inoremap ( ()<Left>
	"対応する{}の入力
	""inoremap { {}<Left>
	"対応する<>の入力
	""inoremap < <><Left>
	"対応する""の入力
	""inoremap " ""<Left>

"====================================
"挿入モード時、ステータスラインの色を変更
"====================================
"このへんの設定が甘い
	let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'
	function! s:GetHighlight(hi)
		redir => hl
		exec 'highlight '.a:hi
		redir END
		let hl = substitute(hl, '[\r\n]', '', 'g')
		let hl = substitute(hl, 'xxx', '', '')
		return hl
	endfunction
"==========================
"　　　　検索関係
"==========================
	"コマンド、検索パターンを100個まで履歴に残す
	set history=100
	"検索の時に大文字小文字を区別しない
	set ignorecase
	"検索の時に大文字が含まれている場合は区別して検索する
	set smartcase
	"最後まで検索したら先頭に戻る
	set wrapscan
	"折りたたみ?
	set foldmethod=indent
	" すべての検索について、検索後に検索した単語を画面の中央に持ってくるようにする
	nnoremap n nzz
	nnoremap N Nzz
	nnoremap * *zz
	nnoremap # #zz
	nnoremap g* g*zz
	nnoremap g# g#zz

"==========================
"　　ショートカット設定
"==========================
	" Escの2回押しでハイライト消去
	nnoremap <ESC><ESC> :nohlsearch<CR><ESC>
	nmap <F9><F9> :q<CR>
	"ファイルを表示してジャンぷしやすい
	nmap <F4> :Vexplore<CR>
	" <F4>で左右分割してファイラー機動
  noremap <C-j> <esc>
  noremap! <C-j> <esc>


"-------------------------------------------------------------------------------
" ファイルの種別によってコマンドを実行
"-------------------------------------------------------------------------------
	" Cのファイルはcindentにする
	autocmd Filetype c setl cindent
	autocmd Filetype cuda setl cindent
	autocmd Filetype cpp setl cindent
"-------------------------------------------------------------------------------
" ファイル操作のデフォルトを見やすく
"-------------------------------------------------------------------------------
	" netrwは常にtree view
	let g:netrw_liststyle = 3
	" CVSと.で始まるファイルは表示しない
	let g:netrw_list_hide = 'CVS,\(^\|\s\s\)\zs\.\S\+'
	" 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
	let g:netrw_altv = 1
	" 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
	let g:netrw_alto = 1
"-------------------------------------------------------------------------------
"Texを書くための設定
"-------------------------------------------------------------------------------
	set grepprg=grep\ -nH\ $*
	let g:tex_flavor='latex'
	let g:Imap_UsePlaceHolders = 1
	let g:Imap_DeleteEmptyPlaceHolders = 1
	let g:Imap_StickyPlaceHolders = 0
	let g:Tex_DefaultTargetFormat = 'pdf'
	let g:Tex_FormatDependency_pdf = 'dvi,pdf'
	let g:Tex_FormatDependency_ps = 'dvi,ps'
	let g:Tex_CompileRule_pdf = 'ptex2pdf -l -ot "-synctex=1 -interaction=nonstopmode -file-line-error-style" $*'
	let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
	let g:Tex_CompileRule_dvi = 'platex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
	let g:Tex_BibtexFlavor = 'pbibtex'
	let g:Tex_MakeIndexFlavor = 'mendex $*.idx'
	let g:Tex_UseEditorSettingInDVIViewer = 1
	let g:Tex_ViewRule_pdf = 'open -a Preview.app'
	let g:Tex_ViewRule_ps = 'open'
	let g:Tex_ViewRule_dvi = 'open'

"-------------------------------------------------------------------------------
"プラグインの読み込み
"-------------------------------------------------------------------------------
source ~/.dotfiles/vim/.vimrc.plugin
